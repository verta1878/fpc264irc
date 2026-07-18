# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_VARUTILS_VARIANTTYPEMISMATCH
_VARUTILS_VARIANTTYPEMISMATCH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$-2147352571,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EVARIANTERROR_$__CREATECODE$LONGINT$$EVARIANTERROR$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD
_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj12
Lj12:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj12(%ebx),%edx
	movl	$-2147352571,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EVARIANTERROR_$__CREATECODE$LONGINT$$EVARIANTERROR$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj12(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_SYSUTILS_EOUTOFMEMORY$non_lazy_ptr-Lj20(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj21
	jmp	Lj22
Lj21:
	movl	$-2147024882,-8(%ebp)
	jmp	Lj29
Lj22:
	movl	$-2147352567,-8(%ebp)
Lj29:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOSMALLINT$POINTER$$SMALLINT
_VARUTILS_WSTRTOSMALLINT$POINTER$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$2,%eax
	call	Lfpc_val_sint_unicodestr$stub
	movw	%ax,-6(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj44
	jmp	Lj45
Lj44:
	movw	$2,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj45:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOSMALLINT$POINTER$$SMALLINT
_VARUTILS_LSTRTOSMALLINT$POINTER$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$2,%eax
	call	Lfpc_val_sint_ansistr$stub
	movw	%ax,-6(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj62
	jmp	Lj63
Lj62:
	movw	$2,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj63:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOSMALLINT$POINTER$$SMALLINT
_VARUTILS_USTRTOSMALLINT$POINTER$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$2,%eax
	call	Lfpc_val_sint_unicodestr$stub
	movw	%ax,-6(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj80
	jmp	Lj81
Lj80:
	movw	$2,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj81:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj89
	testl	%eax,%eax
	je	Lj90
	subl	$16384,%eax
	je	Lj91
	jmp	Lj89
Lj90:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj94
	subw	$2,%ax
	je	Lj95
	decw	%ax
	je	Lj97
	decw	%ax
	je	Lj98
	decw	%ax
	je	Lj99
	decw	%ax
	je	Lj101
	decw	%ax
	je	Lj100
	decw	%ax
	je	Lj109
	subw	$3,%ax
	je	Lj102
	decw	%ax
	je	Lj103
	subw	$4,%ax
	je	Lj96
	decw	%ax
	je	Lj104
	decw	%ax
	je	Lj105
	decw	%ax
	je	Lj106
	decw	%ax
	je	Lj107
	decw	%ax
	je	Lj108
	subw	$235,%ax
	je	Lj110
	subw	$2,%ax
	je	Lj111
	jmp	Lj93
Lj94:
	movw	$0,-6(%ebp)
	jmp	Lj92
Lj95:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj96:
	movl	-4(%ebp),%eax
	movsbw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj97:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj98:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj99:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj100:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj101:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj87(%ebx),%edx
	fildq	(%edx)
	fildq	8(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj102:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj103:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj104:
	movl	-4(%ebp),%eax
	movzbw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj105:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj106:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj107:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj108:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj109:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOSMALLINT$POINTER$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj110:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOSMALLINT$POINTER$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj111:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOSMALLINT$POINTER$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj92
Lj93:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$2,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj92:
	jmp	Lj88
Lj91:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj162
	jmp	Lj163
Lj162:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj165
	subw	$2,%ax
	je	Lj166
	decw	%ax
	je	Lj168
	decw	%ax
	je	Lj169
	decw	%ax
	je	Lj170
	decw	%ax
	je	Lj172
	decw	%ax
	je	Lj171
	decw	%ax
	je	Lj180
	subw	$3,%ax
	je	Lj173
	decw	%ax
	je	Lj174
	subw	$4,%ax
	je	Lj167
	decw	%ax
	je	Lj175
	decw	%ax
	je	Lj176
	decw	%ax
	je	Lj177
	decw	%ax
	je	Lj178
	decw	%ax
	je	Lj179
	subw	$235,%ax
	je	Lj181
	subw	$2,%ax
	je	Lj182
	jmp	Lj165
Lj166:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj167:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj168:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj169:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj170:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj171:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj172:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj87(%ebx),%edx
	fildq	(%edx)
	fildq	(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj173:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj174:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj175:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj176:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj177:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj178:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj179:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj180:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOSMALLINT$POINTER$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj181:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOSMALLINT$POINTER$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj182:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOSMALLINT$POINTER$$SMALLINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj164
Lj165:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$2,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj164:
	jmp	Lj231
Lj163:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$2,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj231:
	jmp	Lj88
Lj89:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$2,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj88:
	movw	-6(%ebp),%ax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOSHORTINT$POINTER$$SHORTINT
_VARUTILS_WSTRTOSHORTINT$POINTER$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$1,%eax
	call	Lfpc_val_sint_unicodestr$stub
	movb	%al,-5(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj252
	jmp	Lj253
Lj252:
	movw	$16,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj253:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOSHORTINT$POINTER$$SHORTINT
_VARUTILS_LSTRTOSHORTINT$POINTER$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$1,%eax
	call	Lfpc_val_sint_ansistr$stub
	movb	%al,-5(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj270
	jmp	Lj271
Lj270:
	movw	$16,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj271:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOSHORTINT$POINTER$$SHORTINT
_VARUTILS_USTRTOSHORTINT$POINTER$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$1,%eax
	call	Lfpc_val_sint_unicodestr$stub
	movb	%al,-5(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj288
	jmp	Lj289
Lj288:
	movw	$16,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj289:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj295
Lj295:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj297
	testl	%eax,%eax
	je	Lj298
	subl	$16384,%eax
	je	Lj299
	jmp	Lj297
Lj298:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj302
	subw	$2,%ax
	je	Lj303
	decw	%ax
	je	Lj305
	decw	%ax
	je	Lj306
	decw	%ax
	je	Lj307
	decw	%ax
	je	Lj309
	decw	%ax
	je	Lj308
	decw	%ax
	je	Lj317
	subw	$3,%ax
	je	Lj310
	decw	%ax
	je	Lj311
	subw	$4,%ax
	je	Lj304
	decw	%ax
	je	Lj312
	decw	%ax
	je	Lj313
	decw	%ax
	je	Lj314
	decw	%ax
	je	Lj315
	decw	%ax
	je	Lj316
	subw	$235,%ax
	je	Lj318
	subw	$2,%ax
	je	Lj319
	jmp	Lj301
Lj302:
	movb	$0,-5(%ebp)
	jmp	Lj300
Lj303:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj304:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj305:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj306:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj307:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj308:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj309:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj295(%ebx),%eax
	fildq	(%eax)
	fildq	8(%edx)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj310:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj311:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj312:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj313:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj314:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj315:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj316:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj317:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOSHORTINT$POINTER$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj318:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOSHORTINT$POINTER$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj319:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOSHORTINT$POINTER$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj301:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$16,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj300:
	jmp	Lj296
Lj299:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj370
	jmp	Lj371
Lj370:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj373
	subw	$2,%ax
	je	Lj374
	decw	%ax
	je	Lj376
	decw	%ax
	je	Lj377
	decw	%ax
	je	Lj378
	decw	%ax
	je	Lj380
	decw	%ax
	je	Lj379
	decw	%ax
	je	Lj388
	subw	$3,%ax
	je	Lj381
	decw	%ax
	je	Lj382
	subw	$4,%ax
	je	Lj375
	decw	%ax
	je	Lj383
	decw	%ax
	je	Lj384
	decw	%ax
	je	Lj385
	decw	%ax
	je	Lj386
	decw	%ax
	je	Lj387
	subw	$235,%ax
	je	Lj389
	subw	$2,%ax
	je	Lj390
	jmp	Lj373
Lj374:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj375:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj376:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj377:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj378:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj379:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj380:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj295(%ebx),%edx
	fildq	(%edx)
	fildq	(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj381:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj382:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj383:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj384:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj385:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj386:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj387:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj388:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOSHORTINT$POINTER$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj389:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOSHORTINT$POINTER$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj390:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOSHORTINT$POINTER$$SHORTINT$stub
	movb	%al,-5(%ebp)
	jmp	Lj372
Lj373:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$16,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj372:
	jmp	Lj439
Lj371:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$16,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj439:
	jmp	Lj296
Lj297:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$16,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj296:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOLONGINT$POINTER$$LONGINT
_VARUTILS_WSTRTOLONGINT$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_unicodestr$stub
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj460
	jmp	Lj461
Lj460:
	movw	$3,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj461:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOLONGINT$POINTER$$LONGINT
_VARUTILS_LSTRTOLONGINT$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_ansistr$stub
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj478
	jmp	Lj479
Lj478:
	movw	$3,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj479:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOLONGINT$POINTER$$LONGINT
_VARUTILS_USTRTOLONGINT$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_unicodestr$stub
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj496
	jmp	Lj497
Lj496:
	movw	$3,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj497:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT
_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj503
Lj503:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj505
	testl	%eax,%eax
	je	Lj506
	subl	$16384,%eax
	je	Lj507
	jmp	Lj505
Lj506:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj510
	subw	$2,%ax
	je	Lj511
	decw	%ax
	je	Lj513
	decw	%ax
	je	Lj514
	decw	%ax
	je	Lj515
	decw	%ax
	je	Lj517
	decw	%ax
	je	Lj516
	decw	%ax
	je	Lj525
	subw	$3,%ax
	je	Lj518
	decw	%ax
	je	Lj519
	subw	$4,%ax
	je	Lj512
	decw	%ax
	je	Lj520
	decw	%ax
	je	Lj521
	decw	%ax
	je	Lj522
	decw	%ax
	je	Lj523
	decw	%ax
	je	Lj524
	subw	$235,%ax
	je	Lj526
	subw	$2,%ax
	je	Lj527
	jmp	Lj509
Lj510:
	movl	$0,-8(%ebp)
	jmp	Lj508
Lj511:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj512:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj513:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj514:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj515:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj516:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj517:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj503(%ebx),%edx
	fildq	(%edx)
	fildq	8(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj518:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj519:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj520:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj521:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj522:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj523:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj524:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj525:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOLONGINT$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj526:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOLONGINT$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj527:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOLONGINT$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj508
Lj509:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$3,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj508:
	jmp	Lj504
Lj507:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj578
	jmp	Lj579
Lj578:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj581
	subw	$2,%ax
	je	Lj582
	decw	%ax
	je	Lj584
	decw	%ax
	je	Lj585
	decw	%ax
	je	Lj586
	decw	%ax
	je	Lj588
	decw	%ax
	je	Lj587
	decw	%ax
	je	Lj596
	subw	$3,%ax
	je	Lj589
	decw	%ax
	je	Lj590
	subw	$4,%ax
	je	Lj583
	decw	%ax
	je	Lj591
	decw	%ax
	je	Lj592
	decw	%ax
	je	Lj593
	decw	%ax
	je	Lj594
	decw	%ax
	je	Lj595
	subw	$235,%ax
	je	Lj597
	subw	$2,%ax
	je	Lj598
	jmp	Lj581
Lj582:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj583:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj584:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj585:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj586:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj587:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj588:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj503(%ebx),%edx
	fildq	(%edx)
	fildq	(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj589:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj590:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj591:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj592:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj593:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj594:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj595:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj596:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOLONGINT$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj597:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOLONGINT$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj598:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOLONGINT$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj580
Lj581:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$3,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj580:
	jmp	Lj647
Lj579:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$3,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj647:
	jmp	Lj504
Lj505:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$3,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj504:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOCARDINAL$POINTER$$LONGWORD
_VARUTILS_WSTRTOCARDINAL$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_uint_unicodestr$stub
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj666
	jmp	Lj667
Lj666:
	movw	$19,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj667:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOCARDINAL$POINTER$$LONGWORD
_VARUTILS_LSTRTOCARDINAL$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_uint_ansistr$stub
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj682
	jmp	Lj683
Lj682:
	movw	$19,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj683:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOCARDINAL$POINTER$$LONGWORD
_VARUTILS_USTRTOCARDINAL$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_uint_unicodestr$stub
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj698
	jmp	Lj699
Lj698:
	movw	$19,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj699:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj705
Lj705:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj707
	testl	%eax,%eax
	je	Lj708
	subl	$16384,%eax
	je	Lj709
	jmp	Lj707
Lj708:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj712
	subw	$2,%ax
	je	Lj713
	decw	%ax
	je	Lj715
	decw	%ax
	je	Lj716
	decw	%ax
	je	Lj717
	decw	%ax
	je	Lj719
	decw	%ax
	je	Lj718
	decw	%ax
	je	Lj727
	subw	$3,%ax
	je	Lj720
	decw	%ax
	je	Lj721
	subw	$4,%ax
	je	Lj714
	decw	%ax
	je	Lj722
	decw	%ax
	je	Lj723
	decw	%ax
	je	Lj724
	decw	%ax
	je	Lj725
	decw	%ax
	je	Lj726
	subw	$235,%ax
	je	Lj728
	subw	$2,%ax
	je	Lj729
	jmp	Lj711
Lj712:
	movl	$0,-8(%ebp)
	jmp	Lj710
Lj713:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj714:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj715:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj716:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj717:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj718:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj719:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj705(%ebx),%edx
	fildq	(%edx)
	fildq	8(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj720:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj721:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj722:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj723:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj724:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj725:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj726:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj727:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOCARDINAL$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj728:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOCARDINAL$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj729:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOCARDINAL$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj710
Lj711:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$19,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj710:
	jmp	Lj706
Lj709:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj780
	jmp	Lj781
Lj780:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj783
	subw	$2,%ax
	je	Lj784
	decw	%ax
	je	Lj786
	decw	%ax
	je	Lj787
	decw	%ax
	je	Lj788
	decw	%ax
	je	Lj790
	decw	%ax
	je	Lj789
	decw	%ax
	je	Lj798
	subw	$3,%ax
	je	Lj791
	decw	%ax
	je	Lj792
	subw	$4,%ax
	je	Lj785
	decw	%ax
	je	Lj793
	decw	%ax
	je	Lj794
	decw	%ax
	je	Lj795
	decw	%ax
	je	Lj796
	decw	%ax
	je	Lj797
	subw	$235,%ax
	je	Lj799
	subw	$2,%ax
	je	Lj800
	jmp	Lj783
Lj784:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj785:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj786:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj787:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj788:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj789:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj790:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj705(%ebx),%edx
	fildq	(%edx)
	fildq	(%eax)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj791:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj792:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj793:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj794:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj795:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj796:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj797:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj798:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOCARDINAL$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj799:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOCARDINAL$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj800:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOCARDINAL$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj782
Lj783:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$19,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj782:
	jmp	Lj849
Lj781:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$19,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj849:
	jmp	Lj706
Lj707:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$19,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj706:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_PREPAREFLOATSTR$SHORTSTRING
_VARUTILS_PREPAREFLOATSTR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj859
Lj859:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	$1,-6(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	$1,-5(%ebp)
	cmpb	-5(%ebp),%al
	jb	Lj863
	decb	-5(%ebp)
	.align 2
Lj864:
	incb	-5(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-5(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj859(%ebx),%ecx
	cmpb	2(%ecx),%dl
	jne	Lj865
	jmp	Lj866
Lj865:
	movl	-4(%ebp),%edx
	movzbl	-5(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj859(%ebx),%ecx
	cmpb	3(%ecx),%dl
	je	Lj867
	jmp	Lj868
Lj867:
	movl	-4(%ebp),%edx
	movzbl	-6(%ebp),%ecx
	movb	$46,(%edx,%ecx,1)
	jmp	Lj871
Lj868:
	movl	-4(%ebp),%ecx
	movzbl	-6(%ebp),%esi
	movl	-4(%ebp),%edx
	movzbl	-5(%ebp),%edi
	movb	(%edx,%edi,1),%dl
	movb	%dl,(%ecx,%esi,1)
Lj871:
	incb	-6(%ebp)
Lj866:
	cmpb	-5(%ebp),%al
	ja	Lj864
Lj863:
	movb	-6(%ebp),%cl
	decb	%cl
	movzbl	%cl,%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_setlength$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOSINGLE$POINTER$$SINGLE
_VARUTILS_WSTRTOSINGLE$POINTER$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj884
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj884:
	cmpl	$255,%eax
	jg	Lj882
	jmp	Lj883
Lj882:
	movw	$4,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj883:
	movl	-4(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-264(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-272(%ebp),%edx
	leal	-264(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	fstps	-276(%ebp)
	flds	-276(%ebp)
	fstps	-8(%ebp)
	movw	-272(%ebp),%ax
	movw	%ax,-266(%ebp)
	movzwl	-266(%ebp),%eax
	testl	%eax,%eax
	jne	Lj905
	jmp	Lj906
Lj905:
	movw	$4,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj906:
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOSINGLE$POINTER$$SINGLE
_VARUTILS_LSTRTOSINGLE$POINTER$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj915
	movl	-4(%eax),%eax
Lj915:
	cmpl	$255,%eax
	jg	Lj913
	jmp	Lj914
Lj913:
	movw	$4,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj914:
	movl	-4(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-264(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-272(%ebp),%edx
	leal	-264(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	fstps	-276(%ebp)
	flds	-276(%ebp)
	fstps	-8(%ebp)
	movw	-272(%ebp),%ax
	movw	%ax,-266(%ebp)
	movzwl	-266(%ebp),%eax
	testl	%eax,%eax
	jne	Lj936
	jmp	Lj937
Lj936:
	movw	$4,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj937:
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOSINGLE$POINTER$$SINGLE
_VARUTILS_USTRTOSINGLE$POINTER$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj946
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj946:
	cmpl	$255,%eax
	jg	Lj944
	jmp	Lj945
Lj944:
	movw	$4,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj945:
	movl	-4(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-264(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-272(%ebp),%edx
	leal	-264(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	fstps	-276(%ebp)
	flds	-276(%ebp)
	fstps	-8(%ebp)
	movw	-272(%ebp),%ax
	movw	%ax,-266(%ebp)
	movzwl	-266(%ebp),%eax
	testl	%eax,%eax
	jne	Lj967
	jmp	Lj968
Lj967:
	movw	$4,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj968:
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE
_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj974
Lj974:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj976
	testl	%eax,%eax
	je	Lj977
	subl	$16384,%eax
	je	Lj978
	jmp	Lj976
Lj977:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj981
	subw	$2,%ax
	je	Lj982
	decw	%ax
	je	Lj984
	decw	%ax
	je	Lj985
	decw	%ax
	je	Lj986
	decw	%ax
	je	Lj987
	decw	%ax
	je	Lj988
	decw	%ax
	je	Lj996
	subw	$3,%ax
	je	Lj989
	decw	%ax
	je	Lj990
	subw	$4,%ax
	je	Lj983
	decw	%ax
	je	Lj991
	decw	%ax
	je	Lj992
	decw	%ax
	je	Lj993
	decw	%ax
	je	Lj994
	decw	%ax
	je	Lj995
	subw	$235,%ax
	je	Lj997
	subw	$2,%ax
	je	Lj998
	jmp	Lj980
Lj981:
	fldz
	fstps	-8(%ebp)
	jmp	Lj979
Lj982:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj983:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj984:
	movl	-4(%ebp),%eax
	fildl	8(%eax)
	fstps	-8(%ebp)
	jmp	Lj979
Lj985:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj979
Lj986:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstps	-8(%ebp)
	jmp	Lj979
Lj987:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj974(%ebx),%edx
	fildq	(%edx)
	fildq	8(%eax)
	fdivp	%st,%st(1)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj988:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstps	-8(%ebp)
	jmp	Lj979
Lj989:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj990:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj979
Lj991:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj992:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj993:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fstps	-8(%ebp)
	jmp	Lj979
Lj994:
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	fstps	-8(%ebp)
	jmp	Lj979
Lj995:
	movl	-4(%ebp),%eax
	btl	$31,12(%eax)
	fildq	8(%eax)
	jnc	Lj1033
	movl	L_$VARUTILS$_Ld2$non_lazy_ptr-Lj974(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1033:
	fstps	-8(%ebp)
	jmp	Lj979
Lj996:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOSINGLE$POINTER$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj979
Lj997:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOSINGLE$POINTER$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj979
Lj998:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOSINGLE$POINTER$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj979
Lj980:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$4,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj979:
	jmp	Lj975
Lj978:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj1050
	jmp	Lj1051
Lj1050:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj1053
	subw	$2,%ax
	je	Lj1054
	decw	%ax
	je	Lj1056
	decw	%ax
	je	Lj1057
	decw	%ax
	je	Lj1058
	decw	%ax
	je	Lj1059
	decw	%ax
	je	Lj1060
	decw	%ax
	je	Lj1068
	subw	$3,%ax
	je	Lj1061
	decw	%ax
	je	Lj1062
	subw	$4,%ax
	je	Lj1055
	decw	%ax
	je	Lj1063
	decw	%ax
	je	Lj1064
	decw	%ax
	je	Lj1065
	decw	%ax
	je	Lj1066
	decw	%ax
	je	Lj1067
	subw	$235,%ax
	je	Lj1069
	subw	$2,%ax
	je	Lj1070
	jmp	Lj1053
Lj1054:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1055:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1056:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildl	(%eax)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1057:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1052
Lj1058:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1059:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj974(%ebx),%eax
	fildq	(%eax)
	fildq	(%edx)
	fdivp	%st,%st(1)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1060:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1061:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1062:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1063:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1064:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1065:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-28(%ebp)
	fildq	-32(%ebp)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1066:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildq	(%eax)
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1067:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	btl	$31,4(%eax)
	fildq	(%eax)
	jnc	Lj1103
	movl	L_$VARUTILS$_Ld3$non_lazy_ptr-Lj974(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1103:
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1068:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOSINGLE$POINTER$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1069:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOSINGLE$POINTER$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1070:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOSINGLE$POINTER$$SINGLE$stub
	fstps	-8(%ebp)
	jmp	Lj1052
Lj1053:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$4,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1052:
	jmp	Lj1120
Lj1051:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$4,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1120:
	jmp	Lj975
Lj976:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$4,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj975:
	flds	-8(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTODOUBLE$POINTER$$DOUBLE
_VARUTILS_WSTRTODOUBLE$POINTER$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1133
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1133:
	cmpl	$255,%eax
	jg	Lj1131
	jmp	Lj1132
Lj1131:
	movw	$5,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1132:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-268(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	fstpl	-288(%ebp)
	fldl	-288(%ebp)
	fstpl	-12(%ebp)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1154
	jmp	Lj1155
Lj1154:
	movw	$5,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1155:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTODOUBLE$POINTER$$DOUBLE
_VARUTILS_LSTRTODOUBLE$POINTER$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1164
	movl	-4(%eax),%eax
Lj1164:
	cmpl	$255,%eax
	jg	Lj1162
	jmp	Lj1163
Lj1162:
	movw	$5,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1163:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	fstpl	-288(%ebp)
	fldl	-288(%ebp)
	fstpl	-12(%ebp)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1185
	jmp	Lj1186
Lj1185:
	movw	$5,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1186:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTODOUBLE$POINTER$$DOUBLE
_VARUTILS_USTRTODOUBLE$POINTER$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1195
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1195:
	cmpl	$255,%eax
	jg	Lj1193
	jmp	Lj1194
Lj1193:
	movw	$5,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1194:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-268(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	fstpl	-288(%ebp)
	fldl	-288(%ebp)
	fstpl	-12(%ebp)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1216
	jmp	Lj1217
Lj1216:
	movw	$5,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1217:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE
_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj1223
Lj1223:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj1225
	testl	%eax,%eax
	je	Lj1226
	subl	$16384,%eax
	je	Lj1227
	jmp	Lj1225
Lj1226:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1230
	subw	$2,%ax
	je	Lj1231
	decw	%ax
	je	Lj1233
	decw	%ax
	je	Lj1234
	decw	%ax
	je	Lj1235
	decw	%ax
	je	Lj1236
	decw	%ax
	je	Lj1237
	decw	%ax
	je	Lj1245
	subw	$3,%ax
	je	Lj1238
	decw	%ax
	je	Lj1239
	subw	$4,%ax
	je	Lj1232
	decw	%ax
	je	Lj1240
	decw	%ax
	je	Lj1241
	decw	%ax
	je	Lj1242
	decw	%ax
	je	Lj1243
	decw	%ax
	je	Lj1244
	subw	$235,%ax
	je	Lj1246
	subw	$2,%ax
	je	Lj1247
	jmp	Lj1229
Lj1230:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1231:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1232:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1233:
	movl	-4(%ebp),%eax
	fildl	8(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1234:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1235:
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1228
Lj1236:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1223(%ebx),%eax
	fildq	(%eax)
	fildq	8(%edx)
	fdivp	%st,%st(1)
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1237:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1228
Lj1238:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1239:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1240:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1241:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1242:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1243:
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1244:
	movl	-4(%ebp),%eax
	btl	$31,12(%eax)
	fildq	8(%eax)
	jnc	Lj1282
	movl	L_$VARUTILS$_Ld4$non_lazy_ptr-Lj1223(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1282:
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1245:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTODOUBLE$POINTER$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1246:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTODOUBLE$POINTER$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1247:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTODOUBLE$POINTER$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1228
Lj1229:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$5,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1228:
	jmp	Lj1224
Lj1227:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj1299
	jmp	Lj1300
Lj1299:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj1302
	subw	$2,%ax
	je	Lj1303
	decw	%ax
	je	Lj1305
	decw	%ax
	je	Lj1306
	decw	%ax
	je	Lj1307
	decw	%ax
	je	Lj1308
	decw	%ax
	je	Lj1309
	decw	%ax
	je	Lj1317
	subw	$3,%ax
	je	Lj1310
	decw	%ax
	je	Lj1311
	subw	$4,%ax
	je	Lj1304
	decw	%ax
	je	Lj1312
	decw	%ax
	je	Lj1313
	decw	%ax
	je	Lj1314
	decw	%ax
	je	Lj1315
	decw	%ax
	je	Lj1316
	subw	$235,%ax
	je	Lj1318
	subw	$2,%ax
	je	Lj1319
	jmp	Lj1302
Lj1303:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1304:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1305:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildl	(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1306:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1307:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1301
Lj1308:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1223(%ebx),%eax
	fildq	(%eax)
	fildq	(%edx)
	fdivp	%st,%st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1309:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1301
Lj1310:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1311:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1312:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1313:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1314:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-28(%ebp)
	fildq	-32(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1315:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildq	(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1316:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	btl	$31,4(%eax)
	fildq	(%eax)
	jnc	Lj1352
	movl	L_$VARUTILS$_Ld5$non_lazy_ptr-Lj1223(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1352:
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1317:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTODOUBLE$POINTER$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1318:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTODOUBLE$POINTER$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1319:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTODOUBLE$POINTER$$DOUBLE$stub
	fstpl	-12(%ebp)
	jmp	Lj1301
Lj1302:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$5,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1301:
	jmp	Lj1369
Lj1300:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$5,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1369:
	jmp	Lj1224
Lj1225:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$5,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1224:
	fldl	-12(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOCURRENCY$POINTER$$CURRENCY
_VARUTILS_WSTRTOCURRENCY$POINTER$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	call	Lj1379
Lj1379:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1382
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1382:
	cmpl	$255,%eax
	jg	Lj1380
	jmp	Lj1381
Lj1380:
	movw	$6,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1381:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-268(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	movl	L_$VARUTILS$_Ld6$non_lazy_ptr-Lj1379(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1403
	jmp	Lj1404
Lj1403:
	movw	$6,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1404:
	fildq	-12(%ebp)
	movl	-280(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOCURRENCY$POINTER$$CURRENCY
_VARUTILS_LSTRTOCURRENCY$POINTER$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	call	Lj1410
Lj1410:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1413
	movl	-4(%eax),%eax
Lj1413:
	cmpl	$255,%eax
	jg	Lj1411
	jmp	Lj1412
Lj1411:
	movw	$6,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1412:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	movl	L_$VARUTILS$_Ld6$non_lazy_ptr-Lj1410(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1434
	jmp	Lj1435
Lj1434:
	movw	$6,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1435:
	fildq	-12(%ebp)
	movl	-280(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOCURRENCY$POINTER$$CURRENCY
_VARUTILS_USTRTOCURRENCY$POINTER$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	call	Lj1441
Lj1441:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1444
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1444:
	cmpl	$255,%eax
	jg	Lj1442
	jmp	Lj1443
Lj1442:
	movw	$6,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1443:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-268(%ebp),%eax
	call	L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_real_shortstr$stub
	movl	L_$VARUTILS$_Ld6$non_lazy_ptr-Lj1441(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1465
	jmp	Lj1466
Lj1465:
	movw	$6,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1466:
	fildq	-12(%ebp)
	movl	-280(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj1472
Lj1472:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj1474
	testl	%eax,%eax
	je	Lj1475
	subl	$16384,%eax
	je	Lj1476
	jmp	Lj1474
Lj1475:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1479
	subw	$2,%ax
	je	Lj1480
	decw	%ax
	je	Lj1482
	decw	%ax
	je	Lj1483
	decw	%ax
	je	Lj1484
	decw	%ax
	je	Lj1486
	decw	%ax
	je	Lj1485
	decw	%ax
	je	Lj1494
	subw	$3,%ax
	je	Lj1487
	decw	%ax
	je	Lj1488
	subw	$4,%ax
	je	Lj1481
	decw	%ax
	je	Lj1489
	decw	%ax
	je	Lj1490
	decw	%ax
	je	Lj1491
	decw	%ax
	je	Lj1492
	decw	%ax
	je	Lj1493
	subw	$235,%ax
	je	Lj1495
	subw	$2,%ax
	je	Lj1496
	jmp	Lj1478
Lj1479:
	fldz
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1480:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1481:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1482:
	movl	-4(%ebp),%eax
	fildl	8(%eax)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1483:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld7$non_lazy_ptr-Lj1472(%ebx),%edx
	flds	(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1505
	jmp	Lj1507
Lj1507:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld7$non_lazy_ptr-Lj1472(%ebx),%edx
	flds	(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1505
	jmp	Lj1506
Lj1505:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1506:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld7$non_lazy_ptr-Lj1472(%ebx),%edx
	flds	(%edx)
	flds	8(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1484:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%eax
	fldl	(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1514
	jmp	Lj1516
Lj1516:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1514
	jmp	Lj1515
Lj1514:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1515:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1485:
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	8(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1523
	jmp	Lj1525
Lj1525:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%eax
	fldl	(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1523
	jmp	Lj1524
Lj1523:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1524:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%eax
	fldl	(%eax)
	fldl	8(%edx)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1486:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1477
Lj1487:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1488:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1489:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1490:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1491:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1492:
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1493:
	movl	-4(%ebp),%eax
	btl	$31,12(%eax)
	fildq	8(%eax)
	jnc	Lj1552
	movl	L_$VARUTILS$_Ld9$non_lazy_ptr-Lj1472(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1552:
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1494:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOCURRENCY$POINTER$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1495:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOCURRENCY$POINTER$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1496:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOCURRENCY$POINTER$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1477
Lj1478:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1477:
	jmp	Lj1473
Lj1476:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj1569
	jmp	Lj1570
Lj1569:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj1572
	subw	$2,%ax
	je	Lj1573
	decw	%ax
	je	Lj1575
	decw	%ax
	je	Lj1576
	decw	%ax
	je	Lj1577
	decw	%ax
	je	Lj1579
	decw	%ax
	je	Lj1578
	decw	%ax
	je	Lj1587
	subw	$3,%ax
	je	Lj1580
	decw	%ax
	je	Lj1581
	subw	$4,%ax
	je	Lj1574
	decw	%ax
	je	Lj1582
	decw	%ax
	je	Lj1583
	decw	%ax
	je	Lj1584
	decw	%ax
	je	Lj1585
	decw	%ax
	je	Lj1586
	subw	$235,%ax
	je	Lj1588
	subw	$2,%ax
	je	Lj1589
	jmp	Lj1572
Lj1573:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1574:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1575:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildl	(%eax)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1576:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld7$non_lazy_ptr-Lj1472(%ebx),%eax
	flds	(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1596
	jmp	Lj1598
Lj1598:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld7$non_lazy_ptr-Lj1472(%ebx),%eax
	flds	(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1596
	jmp	Lj1597
Lj1596:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1597:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld7$non_lazy_ptr-Lj1472(%ebx),%eax
	flds	(%eax)
	flds	(%edx)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1577:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1605
	jmp	Lj1607
Lj1607:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1605
	jmp	Lj1606
Lj1605:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1606:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1578:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1614
	jmp	Lj1616
Lj1616:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1614
	jmp	Lj1615
Lj1614:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1615:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld8$non_lazy_ptr-Lj1472(%ebx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1579:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1571
Lj1580:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1581:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1582:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1583:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1584:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-28(%ebp)
	fildq	-32(%ebp)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1585:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildq	(%eax)
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1586:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	btl	$31,4(%eax)
	fildq	(%eax)
	jnc	Lj1643
	movl	L_$VARUTILS$_Ld10$non_lazy_ptr-Lj1472(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1643:
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1472(%ebx),%eax
	fildq	(%eax)
	fmulp	%st,%st(1)
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1587:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOCURRENCY$POINTER$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1588:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOCURRENCY$POINTER$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1589:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOCURRENCY$POINTER$$CURRENCY$stub
	fistpq	-12(%ebp)
	jmp	Lj1571
Lj1572:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1571:
	jmp	Lj1660
Lj1570:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1660:
	jmp	Lj1473
Lj1474:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$6,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1473:
	fildq	-12(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTODATE$POINTER$$TDATETIME
_VARUTILS_WSTRTODATE$POINTER$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
	leal	-12(%ebp),%edx
	leal	-268(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1677
	jmp	Lj1678
Lj1677:
	movw	$7,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1678:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTODATE$POINTER$$TDATETIME
_VARUTILS_LSTRTODATE$POINTER$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1689
	jmp	Lj1690
Lj1689:
	movw	$7,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1690:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTODATE$POINTER$$TDATETIME
_VARUTILS_USTRTODATE$POINTER$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1701
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-56(%ebp),%eax
	leal	-12(%ebp),%edx
	call	L_SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1704
	jmp	Lj1705
Lj1704:
	movw	$7,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1705:
Lj1701:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1702
	call	LFPC_RERAISE$stub
Lj1702:
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME
_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj1719
Lj1719:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj1721
	testl	%eax,%eax
	je	Lj1722
	subl	$16384,%eax
	je	Lj1723
	jmp	Lj1721
Lj1722:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1726
	subw	$2,%ax
	je	Lj1727
	decw	%ax
	je	Lj1729
	decw	%ax
	je	Lj1730
	decw	%ax
	je	Lj1731
	decw	%ax
	je	Lj1732
	decw	%ax
	je	Lj1733
	decw	%ax
	je	Lj1741
	subw	$3,%ax
	je	Lj1734
	decw	%ax
	je	Lj1735
	subw	$4,%ax
	je	Lj1728
	decw	%ax
	je	Lj1736
	decw	%ax
	je	Lj1737
	decw	%ax
	je	Lj1738
	decw	%ax
	je	Lj1739
	decw	%ax
	je	Lj1740
	subw	$235,%ax
	je	Lj1742
	subw	$2,%ax
	je	Lj1743
	jmp	Lj1725
Lj1726:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1727:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1728:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1729:
	movl	-4(%ebp),%eax
	fildl	8(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1730:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1731:
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1724
Lj1732:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1719(%ebx),%eax
	fildq	(%eax)
	fildq	8(%edx)
	fdivp	%st,%st(1)
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1733:
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1724
Lj1734:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1735:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1736:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1737:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1738:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1739:
	movl	-4(%ebp),%eax
	fildq	8(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1740:
	movl	-4(%ebp),%eax
	btl	$31,12(%eax)
	fildq	8(%eax)
	jnc	Lj1778
	movl	L_$VARUTILS$_Ld11$non_lazy_ptr-Lj1719(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1778:
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1741:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTODATE$POINTER$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1742:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTODATE$POINTER$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1743:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTODATE$POINTER$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1724
Lj1725:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$7,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1724:
	jmp	Lj1720
Lj1723:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj1795
	jmp	Lj1796
Lj1795:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj1798
	subw	$2,%ax
	je	Lj1799
	decw	%ax
	je	Lj1801
	decw	%ax
	je	Lj1802
	decw	%ax
	je	Lj1803
	decw	%ax
	je	Lj1804
	decw	%ax
	je	Lj1805
	decw	%ax
	je	Lj1813
	subw	$3,%ax
	je	Lj1806
	decw	%ax
	je	Lj1807
	subw	$4,%ax
	je	Lj1800
	decw	%ax
	je	Lj1808
	decw	%ax
	je	Lj1809
	decw	%ax
	je	Lj1810
	decw	%ax
	je	Lj1811
	decw	%ax
	je	Lj1812
	subw	$235,%ax
	je	Lj1814
	subw	$2,%ax
	je	Lj1815
	jmp	Lj1798
Lj1799:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1800:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1801:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildl	(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1802:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1803:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1797
Lj1804:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj1719(%ebx),%edx
	fildq	(%edx)
	fildq	(%eax)
	fdivp	%st,%st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1805:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1797
Lj1806:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1807:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1808:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1809:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1810:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-28(%ebp)
	fildq	-32(%ebp)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1811:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fildq	(%eax)
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1812:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	btl	$31,4(%eax)
	fildq	(%eax)
	jnc	Lj1848
	movl	L_$VARUTILS$_Ld12$non_lazy_ptr-Lj1719(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
Lj1848:
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1813:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTODATE$POINTER$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1814:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTODATE$POINTER$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1815:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTODATE$POINTER$$TDATETIME$stub
	fstpl	-12(%ebp)
	jmp	Lj1797
Lj1798:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$7,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1797:
	jmp	Lj1865
Lj1796:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$7,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1865:
	jmp	Lj1720
Lj1721:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$7,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1720:
	movl	L_TC_SYSUTILS_MINDATETIME$non_lazy_ptr-Lj1719(%ebx),%eax
	fldl	(%eax)
	fldl	-12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1874
	jmp	Lj1876
Lj1876:
	movl	L_TC_SYSUTILS_MAXDATETIME$non_lazy_ptr-Lj1719(%ebx),%eax
	fldl	(%eax)
	fldl	-12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1874
	jmp	Lj1875
Lj1874:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$7,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1875:
	fldl	-12(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOBOOLEAN$POINTER$$BOOLEAN
_VARUTILS_WSTRTOBOOLEAN$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1883
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-52(%ebp),%eax
	leal	-5(%ebp),%edx
	call	L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1886
	jmp	Lj1887
Lj1886:
	movw	$11,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1887:
Lj1883:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1884
	call	LFPC_RERAISE$stub
Lj1884:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOBOOLEAN$POINTER$$BOOLEAN
_VARUTILS_LSTRTOBOOLEAN$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	-5(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1902
	jmp	Lj1903
Lj1902:
	movw	$11,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1903:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOBOOLEAN$POINTER$$BOOLEAN
_VARUTILS_USTRTOBOOLEAN$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1914
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-52(%ebp),%eax
	leal	-5(%ebp),%edx
	call	L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1917
	jmp	Lj1918
Lj1917:
	movw	$11,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1918:
Lj1914:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1915
	call	LFPC_RERAISE$stub
Lj1915:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj1934
	testl	%eax,%eax
	je	Lj1935
	subl	$16384,%eax
	je	Lj1936
	jmp	Lj1934
Lj1935:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1939
	subw	$2,%ax
	je	Lj1940
	decw	%ax
	je	Lj1942
	decw	%ax
	je	Lj1943
	decw	%ax
	je	Lj1944
	decw	%ax
	je	Lj1945
	decw	%ax
	je	Lj1946
	decw	%ax
	je	Lj1954
	subw	$3,%ax
	je	Lj1947
	decw	%ax
	je	Lj1948
	subw	$4,%ax
	je	Lj1941
	decw	%ax
	je	Lj1949
	decw	%ax
	je	Lj1950
	decw	%ax
	je	Lj1951
	decw	%ax
	je	Lj1952
	decw	%ax
	je	Lj1953
	subw	$235,%ax
	je	Lj1955
	subw	$2,%ax
	je	Lj1956
	jmp	Lj1938
Lj1939:
	movb	$0,-5(%ebp)
	jmp	Lj1937
Lj1940:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	testw	%ax,%ax
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1941:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1942:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1943:
	movl	-4(%ebp),%eax
	fldz
	flds	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1944:
	movl	-4(%ebp),%eax
	fldz
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1945:
	movl	-4(%ebp),%eax
	fldz
	fildq	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1946:
	movl	-4(%ebp),%eax
	fldz
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1947:
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	movb	%al,-5(%ebp)
	jmp	Lj1937
Lj1948:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj1937
Lj1949:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1950:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1951:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj1937
Lj1952:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jne	Lj1987
	cmpl	$0,%edx
	jne	Lj1987
	jmp	Lj1988
Lj1987:
	movb	$1,-5(%ebp)
	jmp	Lj1989
Lj1988:
	movb	$0,-5(%ebp)
Lj1989:
	jmp	Lj1937
Lj1953:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jne	Lj1990
	cmpl	$0,%edx
	jne	Lj1990
	jmp	Lj1991
Lj1990:
	movb	$1,-5(%ebp)
	jmp	Lj1992
Lj1991:
	movb	$0,-5(%ebp)
Lj1992:
	jmp	Lj1937
Lj1954:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOBOOLEAN$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj1937
Lj1955:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOBOOLEAN$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj1937
Lj1956:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOBOOLEAN$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj1937
Lj1938:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$11,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1937:
	jmp	Lj1933
Lj1936:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj2009
	jmp	Lj2010
Lj2009:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2012
	subw	$2,%ax
	je	Lj2013
	decw	%ax
	je	Lj2015
	decw	%ax
	je	Lj2016
	decw	%ax
	je	Lj2017
	decw	%ax
	je	Lj2018
	decw	%ax
	je	Lj2019
	decw	%ax
	je	Lj2027
	subw	$3,%ax
	je	Lj2020
	decw	%ax
	je	Lj2021
	subw	$4,%ax
	je	Lj2014
	decw	%ax
	je	Lj2022
	decw	%ax
	je	Lj2023
	decw	%ax
	je	Lj2024
	decw	%ax
	je	Lj2025
	decw	%ax
	je	Lj2026
	subw	$235,%ax
	je	Lj2028
	subw	$2,%ax
	je	Lj2029
	jmp	Lj2012
Lj2013:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2014:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2015:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2016:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldz
	flds	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2017:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldz
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2018:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldz
	fildq	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2019:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldz
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2020:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2021:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj2011
Lj2022:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2023:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2024:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	jmp	Lj2011
Lj2025:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj2058
	cmpl	$0,%edx
	jne	Lj2058
	jmp	Lj2059
Lj2058:
	movb	$1,-5(%ebp)
	jmp	Lj2060
Lj2059:
	movb	$0,-5(%ebp)
Lj2060:
	jmp	Lj2011
Lj2026:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj2061
	cmpl	$0,%edx
	jne	Lj2061
	jmp	Lj2062
Lj2061:
	movb	$1,-5(%ebp)
	jmp	Lj2063
Lj2062:
	movb	$0,-5(%ebp)
Lj2063:
	jmp	Lj2011
Lj2027:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOBOOLEAN$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj2011
Lj2028:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOBOOLEAN$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj2011
Lj2029:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOBOOLEAN$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj2011
Lj2012:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$11,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2011:
	jmp	Lj2080
Lj2010:
	movb	$0,-5(%ebp)
Lj2080:
	jmp	Lj1933
Lj1934:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$11,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj1933:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOBYTE$POINTER$$BYTE
_VARUTILS_WSTRTOBYTE$POINTER$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_uint_unicodestr$stub
	movb	%al,-5(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2097
	jmp	Lj2098
Lj2097:
	movw	$17,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2098:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOBYTE$POINTER$$BYTE
_VARUTILS_LSTRTOBYTE$POINTER$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_uint_ansistr$stub
	movb	%al,-5(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2113
	jmp	Lj2114
Lj2113:
	movw	$17,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2114:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOBYTE$POINTER$$BYTE
_VARUTILS_USTRTOBYTE$POINTER$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_uint_unicodestr$stub
	movb	%al,-5(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2129
	jmp	Lj2130
Lj2129:
	movw	$17,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2130:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE
_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2136
Lj2136:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj2138
	testl	%eax,%eax
	je	Lj2139
	subl	$16384,%eax
	je	Lj2140
	jmp	Lj2138
Lj2139:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj2143
	subw	$2,%ax
	je	Lj2144
	decw	%ax
	je	Lj2146
	decw	%ax
	je	Lj2147
	decw	%ax
	je	Lj2148
	decw	%ax
	je	Lj2149
	decw	%ax
	je	Lj2150
	decw	%ax
	je	Lj2158
	subw	$3,%ax
	je	Lj2151
	decw	%ax
	je	Lj2152
	subw	$4,%ax
	je	Lj2145
	decw	%ax
	je	Lj2153
	decw	%ax
	je	Lj2154
	decw	%ax
	je	Lj2155
	decw	%ax
	je	Lj2156
	decw	%ax
	je	Lj2157
	subw	$235,%ax
	je	Lj2159
	subw	$2,%ax
	je	Lj2160
	jmp	Lj2142
Lj2143:
	movb	$0,-5(%ebp)
	jmp	Lj2141
Lj2144:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2145:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2146:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2147:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2148:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2149:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj2136(%ebx),%eax
	fildq	(%eax)
	fildq	8(%edx)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2150:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2151:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2152:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2153:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2154:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2155:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2156:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2157:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2158:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOBYTE$POINTER$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2159:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOBYTE$POINTER$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2160:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOBYTE$POINTER$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2141
Lj2142:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$17,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2141:
	jmp	Lj2137
Lj2140:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj2211
	jmp	Lj2212
Lj2211:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2214
	subw	$2,%ax
	je	Lj2215
	decw	%ax
	je	Lj2217
	decw	%ax
	je	Lj2218
	decw	%ax
	je	Lj2219
	decw	%ax
	je	Lj2220
	decw	%ax
	je	Lj2221
	decw	%ax
	je	Lj2229
	subw	$3,%ax
	je	Lj2222
	decw	%ax
	je	Lj2223
	subw	$4,%ax
	je	Lj2216
	decw	%ax
	je	Lj2224
	decw	%ax
	je	Lj2225
	decw	%ax
	je	Lj2226
	decw	%ax
	je	Lj2227
	decw	%ax
	je	Lj2228
	subw	$235,%ax
	je	Lj2230
	subw	$2,%ax
	je	Lj2231
	jmp	Lj2214
Lj2215:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2216:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2217:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2218:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2219:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2220:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj2136(%ebx),%eax
	fildq	(%eax)
	fildq	(%edx)
	fdivp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2221:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-16(%ebp)
	fwait
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2222:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2223:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2224:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2225:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2226:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2227:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2228:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2229:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOBYTE$POINTER$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2230:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOBYTE$POINTER$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2231:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOBYTE$POINTER$$BYTE$stub
	movb	%al,-5(%ebp)
	jmp	Lj2213
Lj2214:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$17,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2213:
	jmp	Lj2280
Lj2212:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$17,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2280:
	jmp	Lj2137
Lj2138:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$17,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2137:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOINT64$POINTER$$INT64
_VARUTILS_WSTRTOINT64$POINTER$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_int64_unicodestr$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2299
	jmp	Lj2300
Lj2299:
	movw	$20,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2300:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOINT64$POINTER$$INT64
_VARUTILS_LSTRTOINT64$POINTER$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_int64_ansistr$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2315
	jmp	Lj2316
Lj2315:
	movw	$20,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2316:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOINT64$POINTER$$INT64
_VARUTILS_USTRTOINT64$POINTER$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_int64_unicodestr$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2331
	jmp	Lj2332
Lj2331:
	movw	$20,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2332:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64
_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2338
Lj2338:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj2340
	testl	%eax,%eax
	je	Lj2341
	subl	$16384,%eax
	je	Lj2342
	jmp	Lj2340
Lj2341:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj2345
	subw	$2,%ax
	je	Lj2346
	decw	%ax
	je	Lj2348
	decw	%ax
	je	Lj2349
	decw	%ax
	je	Lj2350
	decw	%ax
	je	Lj2351
	decw	%ax
	je	Lj2352
	decw	%ax
	je	Lj2360
	subw	$3,%ax
	je	Lj2353
	decw	%ax
	je	Lj2354
	subw	$4,%ax
	je	Lj2347
	decw	%ax
	je	Lj2355
	decw	%ax
	je	Lj2356
	decw	%ax
	je	Lj2357
	decw	%ax
	je	Lj2358
	decw	%ax
	je	Lj2359
	subw	$235,%ax
	je	Lj2361
	subw	$2,%ax
	je	Lj2362
	jmp	Lj2344
Lj2345:
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
	jmp	Lj2343
Lj2346:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2347:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2348:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2349:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2350:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2351:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj2338(%ebx),%eax
	fildq	(%eax)
	fildq	8(%edx)
	fdivp	%st,%st(1)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2352:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2353:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2354:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2343
Lj2355:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2343
Lj2356:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2343
Lj2357:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2358:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2359:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2343
Lj2360:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOINT64$POINTER$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2343
Lj2361:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOINT64$POINTER$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2343
Lj2362:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOINT64$POINTER$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2343
Lj2344:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$20,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2343:
	jmp	Lj2339
Lj2342:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj2413
	jmp	Lj2414
Lj2413:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2416
	subw	$2,%ax
	je	Lj2417
	decw	%ax
	je	Lj2419
	decw	%ax
	je	Lj2420
	decw	%ax
	je	Lj2421
	decw	%ax
	je	Lj2422
	decw	%ax
	je	Lj2423
	decw	%ax
	je	Lj2431
	subw	$3,%ax
	je	Lj2424
	decw	%ax
	je	Lj2425
	subw	$4,%ax
	je	Lj2418
	decw	%ax
	je	Lj2426
	decw	%ax
	je	Lj2427
	decw	%ax
	je	Lj2428
	decw	%ax
	je	Lj2429
	decw	%ax
	je	Lj2430
	subw	$235,%ax
	je	Lj2432
	subw	$2,%ax
	je	Lj2433
	jmp	Lj2416
Lj2417:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2418:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2419:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2420:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2421:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2422:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj2338(%ebx),%eax
	fildq	(%eax)
	fildq	(%edx)
	fdivp	%st,%st(1)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2423:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2424:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2425:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2415
Lj2426:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%edx
	movl	$0,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2427:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2415
Lj2428:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	$0,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2429:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2430:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2415
Lj2431:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOINT64$POINTER$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2415
Lj2432:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOINT64$POINTER$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2415
Lj2433:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOINT64$POINTER$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2415
Lj2416:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$20,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2415:
	jmp	Lj2482
Lj2414:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$20,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2482:
	jmp	Lj2339
Lj2340:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$20,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2339:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_WSTRTOQWORD$POINTER$$QWORD
_VARUTILS_WSTRTOQWORD$POINTER$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_qword_unicodestr$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2501
	jmp	Lj2502
Lj2501:
	movw	$21,%dx
	movw	$8,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2502:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_LSTRTOQWORD$POINTER$$QWORD
_VARUTILS_LSTRTOQWORD$POINTER$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_qword_ansistr$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2517
	jmp	Lj2518
Lj2517:
	movw	$21,%dx
	movw	$256,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2518:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_USTRTOQWORD$POINTER$$QWORD
_VARUTILS_USTRTOQWORD$POINTER$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_qword_unicodestr$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2533
	jmp	Lj2534
Lj2533:
	movw	$21,%dx
	movw	$258,%ax
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2534:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD
_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2540
Lj2540:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj2542
	testl	%eax,%eax
	je	Lj2543
	subl	$16384,%eax
	je	Lj2544
	jmp	Lj2542
Lj2543:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj2547
	subw	$2,%ax
	je	Lj2548
	decw	%ax
	je	Lj2550
	decw	%ax
	je	Lj2551
	decw	%ax
	je	Lj2552
	decw	%ax
	je	Lj2553
	decw	%ax
	je	Lj2554
	decw	%ax
	je	Lj2562
	subw	$3,%ax
	je	Lj2555
	decw	%ax
	je	Lj2556
	subw	$4,%ax
	je	Lj2549
	decw	%ax
	je	Lj2557
	decw	%ax
	je	Lj2558
	decw	%ax
	je	Lj2559
	decw	%ax
	je	Lj2560
	decw	%ax
	je	Lj2561
	subw	$235,%ax
	je	Lj2563
	subw	$2,%ax
	je	Lj2564
	jmp	Lj2546
Lj2547:
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
	jmp	Lj2545
Lj2548:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2549:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2550:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2551:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2552:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2553:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj2540(%ebx),%eax
	fildq	(%eax)
	fildq	8(%edx)
	fdivp	%st,%st(1)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2554:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2555:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2556:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2545
Lj2557:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2545
Lj2558:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2545
Lj2559:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2560:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2561:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2545
Lj2562:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_WSTRTOQWORD$POINTER$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2545
Lj2563:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_LSTRTOQWORD$POINTER$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2545
Lj2564:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_USTRTOQWORD$POINTER$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2545
Lj2546:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$21,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2545:
	jmp	Lj2541
Lj2544:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj2615
	jmp	Lj2616
Lj2615:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2618
	subw	$2,%ax
	je	Lj2619
	decw	%ax
	je	Lj2621
	decw	%ax
	je	Lj2622
	decw	%ax
	je	Lj2623
	decw	%ax
	je	Lj2624
	decw	%ax
	je	Lj2625
	decw	%ax
	je	Lj2633
	subw	$3,%ax
	je	Lj2626
	decw	%ax
	je	Lj2627
	subw	$4,%ax
	je	Lj2620
	decw	%ax
	je	Lj2628
	decw	%ax
	je	Lj2629
	decw	%ax
	je	Lj2630
	decw	%ax
	je	Lj2631
	decw	%ax
	je	Lj2632
	subw	$235,%ax
	je	Lj2634
	subw	$2,%ax
	je	Lj2635
	jmp	Lj2618
Lj2619:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2620:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2621:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2622:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2623:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2624:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	L_$VARUTILS$_Ld1$non_lazy_ptr-Lj2540(%ebx),%eax
	fildq	(%eax)
	fildq	(%edx)
	fdivp	%st,%st(1)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2625:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2626:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2627:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2617
Lj2628:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%edx
	movl	$0,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2629:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2617
Lj2630:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	$0,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2631:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2632:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2617
Lj2633:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_WSTRTOQWORD$POINTER$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2617
Lj2634:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_LSTRTOQWORD$POINTER$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2617
Lj2635:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	call	L_VARUTILS_USTRTOQWORD$POINTER$$QWORD$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj2617
Lj2618:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$21,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2617:
	jmp	Lj2684
Lj2616:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$21,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2684:
	jmp	Lj2541
Lj2542:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$21,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2541:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING
_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	fldl	8(%ebp)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj2696
	cmpl	$0,%eax
	jne	Lj2696
	jmp	Lj2695
Lj2695:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING$stub
	jmp	Lj2701
Lj2696:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING$stub
Lj2701:
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2708
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj2712
	testl	%eax,%eax
	je	Lj2713
	subl	$16384,%eax
	je	Lj2714
	jmp	Lj2712
Lj2713:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj2717
	subw	$2,%ax
	je	Lj2718
	decw	%ax
	je	Lj2720
	decw	%ax
	je	Lj2721
	decw	%ax
	je	Lj2722
	decw	%ax
	je	Lj2723
	decw	%ax
	je	Lj2724
	decw	%ax
	je	Lj2732
	subw	$3,%ax
	je	Lj2725
	decw	%ax
	je	Lj2726
	subw	$4,%ax
	je	Lj2719
	decw	%ax
	je	Lj2727
	decw	%ax
	je	Lj2728
	decw	%ax
	je	Lj2729
	decw	%ax
	je	Lj2730
	decw	%ax
	je	Lj2731
	subw	$235,%ax
	je	Lj2733
	subw	$2,%ax
	je	Lj2734
	jmp	Lj2716
Lj2717:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj2715
Lj2718:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2719:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2720:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2721:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2722:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2723:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,(%esp)
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2724:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,(%esp)
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	leal	-52(%ebp),%eax
	call	L_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2725:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2726:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	jmp	Lj2715
Lj2727:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2728:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2729:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2730:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2731:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2732:
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj2715
Lj2733:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2715
Lj2734:
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj2715
Lj2716:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$8,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2715:
	jmp	Lj2711
Lj2714:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj2861
	jmp	Lj2862
Lj2861:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj2864
	subw	$2,%ax
	je	Lj2865
	decw	%ax
	je	Lj2867
	decw	%ax
	je	Lj2868
	decw	%ax
	je	Lj2869
	decw	%ax
	je	Lj2870
	decw	%ax
	je	Lj2871
	decw	%ax
	je	Lj2879
	subw	$3,%ax
	je	Lj2872
	decw	%ax
	je	Lj2873
	subw	$4,%ax
	je	Lj2866
	decw	%ax
	je	Lj2874
	decw	%ax
	je	Lj2875
	decw	%ax
	je	Lj2876
	decw	%ax
	je	Lj2877
	decw	%ax
	je	Lj2878
	subw	$235,%ax
	je	Lj2880
	subw	$2,%ax
	je	Lj2881
	jmp	Lj2864
Lj2865:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2866:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2867:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2868:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2869:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2870:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2871:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	leal	-52(%ebp),%eax
	call	L_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2872:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	leal	-52(%ebp),%ecx
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2873:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	jmp	Lj2863
Lj2874:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2875:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2876:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2877:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2878:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2879:
	movl	-4(%ebp),%eax
	movl	8(%eax),%esi
	movl	(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj2863
Lj2880:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj2863
Lj2881:
	movl	-4(%ebp),%eax
	movl	8(%eax),%esi
	movl	(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj2863
Lj2864:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$8,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2863:
	jmp	Lj3006
Lj2862:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$8,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj3006:
	jmp	Lj2711
Lj2712:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$8,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj2711:
Lj2708:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2709
	call	LFPC_RERAISE$stub
Lj2709:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj3018
	testl	%eax,%eax
	je	Lj3019
	subl	$16384,%eax
	je	Lj3020
	jmp	Lj3018
Lj3019:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj3023
	subw	$2,%ax
	je	Lj3024
	decw	%ax
	je	Lj3026
	decw	%ax
	je	Lj3027
	decw	%ax
	je	Lj3028
	decw	%ax
	je	Lj3029
	decw	%ax
	je	Lj3030
	decw	%ax
	je	Lj3038
	subw	$3,%ax
	je	Lj3031
	decw	%ax
	je	Lj3032
	subw	$4,%ax
	je	Lj3025
	decw	%ax
	je	Lj3033
	decw	%ax
	je	Lj3034
	decw	%ax
	je	Lj3035
	decw	%ax
	je	Lj3036
	decw	%ax
	je	Lj3037
	subw	$235,%ax
	je	Lj3039
	subw	$2,%ax
	je	Lj3040
	jmp	Lj3022
Lj3023:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj3021
Lj3024:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3021
Lj3025:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3021
Lj3026:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3021
Lj3027:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING$stub
	jmp	Lj3021
Lj3028:
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	jmp	Lj3021
Lj3029:
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub
	jmp	Lj3021
Lj3030:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,(%esp)
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING$stub
	jmp	Lj3021
Lj3031:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movw	8(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	jmp	Lj3021
Lj3032:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	jmp	Lj3021
Lj3033:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3021
Lj3034:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3021
Lj3035:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	jmp	Lj3021
Lj3036:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	jmp	Lj3021
Lj3037:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	jmp	Lj3021
Lj3038:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	jmp	Lj3021
Lj3039:
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj3021
Lj3040:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	jmp	Lj3021
Lj3022:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$256,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj3021:
	jmp	Lj3017
Lj3020:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj3117
	jmp	Lj3118
Lj3117:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj3120
	subw	$2,%ax
	je	Lj3121
	decw	%ax
	je	Lj3123
	decw	%ax
	je	Lj3124
	decw	%ax
	je	Lj3125
	decw	%ax
	je	Lj3126
	decw	%ax
	je	Lj3127
	decw	%ax
	je	Lj3135
	subw	$3,%ax
	je	Lj3128
	decw	%ax
	je	Lj3129
	subw	$4,%ax
	je	Lj3122
	decw	%ax
	je	Lj3130
	decw	%ax
	je	Lj3131
	decw	%ax
	je	Lj3132
	decw	%ax
	je	Lj3133
	decw	%ax
	je	Lj3134
	subw	$235,%ax
	je	Lj3136
	subw	$2,%ax
	je	Lj3137
	jmp	Lj3120
Lj3121:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3119
Lj3122:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3119
Lj3123:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3119
Lj3124:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING$stub
	jmp	Lj3119
Lj3125:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	jmp	Lj3119
Lj3126:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub
	jmp	Lj3119
Lj3127:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING$stub
	jmp	Lj3119
Lj3128:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	orw	%ax,%ax
	setneb	%al
	movl	-8(%ebp),%ecx
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	jmp	Lj3119
Lj3129:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	jmp	Lj3119
Lj3130:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3119
Lj3131:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	jmp	Lj3119
Lj3132:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	jmp	Lj3119
Lj3133:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	jmp	Lj3119
Lj3134:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	jmp	Lj3119
Lj3135:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	jmp	Lj3119
Lj3136:
	movl	-4(%ebp),%eax
	movl	8(%eax),%esi
	movl	(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj3119
Lj3137:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	jmp	Lj3119
Lj3120:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$256,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj3119:
	jmp	Lj3212
Lj3118:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$256,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj3212:
	jmp	Lj3017
Lj3018:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$256,%dx
	call	L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub
Lj3017:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTTOSHORTSTRING$TVARDATA$$SHORTSTRING
_VARUTILS_VARIANTTOSHORTSTRING$TVARDATA$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3223
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
Lj3223:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3224
	call	LFPC_RERAISE$stub
Lj3224:
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$VARIANT
_VARUTILS_DUMPVARIANT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj3237
Lj3237:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj3237(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj3240
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3237(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj3241
Lj3240:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3237(%ebx),%edx
	leal	4(%edx),%eax
Lj3241:
	movl	-4(%ebp),%ecx
	movl	L_$VARUTILS$_Ld13$non_lazy_ptr-Lj3237(%ebx),%edx
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$SHORTSTRING$VARIANT
_VARUTILS_DUMPVARIANT$SHORTSTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3247
Lj3247:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj3247(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj3250
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3247(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj3251
Lj3250:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3247(%ebx),%edx
	leal	4(%edx),%eax
Lj3251:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$TEXT$VARIANT
_VARUTILS_DUMPVARIANT$TEXT$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3257
Lj3257:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld13$non_lazy_ptr-Lj3257(%ebx),%edx
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$VARIANT
_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$TVARDATA
_VARUTILS_DUMPVARIANT$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj3273
Lj3273:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj3273(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj3276
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3273(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj3277
Lj3276:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3273(%ebx),%edx
	leal	4(%edx),%eax
Lj3277:
	movl	-4(%ebp),%ecx
	movl	L_$VARUTILS$_Ld13$non_lazy_ptr-Lj3273(%ebx),%edx
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$SHORTSTRING$TVARDATA
_VARUTILS_DUMPVARIANT$SHORTSTRING$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3283
Lj3283:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj3283(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj3286
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3283(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj3287
Lj3286:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj3283(%ebx),%edx
	leal	4(%edx),%eax
Lj3287:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$TEXT$TVARDATA
_VARUTILS_DUMPVARIANT$TEXT$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3293
Lj3293:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$VARUTILS$_Ld13$non_lazy_ptr-Lj3293(%ebx),%edx
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-324(%ebp)
	movl	%esi,-320(%ebp)
	call	Lj3301
Lj3301:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-316(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3302
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld14$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld15$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	leal	-312(%ebp),%edx
	call	L_SYSTEM_HEXSTR$POINTER$$SHORTSTRING$stub
	leal	-312(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld16$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	cmpl	$16384,%eax
	je	Lj3341
	jmp	Lj3342
Lj3341:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld17$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj3342:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	je	Lj3351
	jmp	Lj3352
Lj3351:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld18$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj3352:
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-28672,%eax
	testl	%eax,%eax
	jne	Lj3361
	jmp	Lj3362
Lj3361:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld19$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%ecx
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	movl	$4,%edx
	call	L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj3362:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$22,%eax
	jb	Lj3385
Lj3385:
	jc	Lj3383
	jmp	Lj3384
Lj3383:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld20$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	L_TC_VARUTILS_VARTYPESTRINGS$non_lazy_ptr-Lj3301(%ebx),%edx
	leal	(%edx,%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3400
Lj3384:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$256,%eax
	je	Lj3401
	jmp	Lj3402
Lj3401:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld21$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3411
Lj3402:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$258,%eax
	je	Lj3412
	jmp	Lj3413
Lj3412:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld22$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3422
Lj3413:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld23$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	leal	-316(%ebp),%ecx
	movl	$4,%edx
	call	L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj3422:
Lj3411:
Lj3400:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$VARUTILS$_Ld24$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj3455:
	incl	-16(%ebp)
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	2(%edx,%eax,1),%eax
	leal	-316(%ebp),%ecx
	movl	$2,%edx
	call	L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$32,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	cmpl	$13,-16(%ebp)
	jl	Lj3455
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	je	Lj3482
	jmp	Lj3483
Lj3482:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld25$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld15$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	leal	-312(%ebp),%edx
	call	L_SYSTEM_HEXSTR$POINTER$$SHORTSTRING$stub
	leal	-312(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld26$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3302
Lj3483:
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3522
	jmp	Lj3523
Lj3522:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld27$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	cmpl	$16384,%eax
	je	Lj3532
	jmp	Lj3534
Lj3534:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	cmpl	$12,%eax
	je	Lj3532
	jmp	Lj3533
Lj3532:
	movl	-12(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj3536
	jmp	Lj3535
Lj3535:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld28$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld25$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld15$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	leal	-312(%ebp),%edx
	call	L_SYSTEM_HEXSTR$POINTER$$SHORTSTRING$stub
	leal	-312(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld26$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3302
Lj3536:
Lj3533:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$1,%ax
	jb	Lj3584
	decw	%ax
	je	Lj3585
	decw	%ax
	je	Lj3586
	decw	%ax
	je	Lj3587
	decw	%ax
	je	Lj3588
	decw	%ax
	je	Lj3589
	decw	%ax
	je	Lj3590
	decw	%ax
	je	Lj3591
	decw	%ax
	je	Lj3592
	subw	$2,%ax
	je	Lj3593
	decw	%ax
	je	Lj3594
	decw	%ax
	je	Lj3595
	subw	$4,%ax
	je	Lj3596
	decw	%ax
	je	Lj3597
	decw	%ax
	je	Lj3598
	decw	%ax
	je	Lj3599
	decw	%ax
	je	Lj3600
	decw	%ax
	je	Lj3601
	subw	$235,%ax
	je	Lj3602
	subw	$16129,%ax
	je	Lj3603
	decw	%ax
	je	Lj3604
	decw	%ax
	je	Lj3605
	decw	%ax
	je	Lj3606
	decw	%ax
	je	Lj3607
	decw	%ax
	je	Lj3608
	decw	%ax
	je	Lj3609
	decw	%ax
	je	Lj3610
	subw	$2,%ax
	je	Lj3611
	decw	%ax
	je	Lj3612
	decw	%ax
	je	Lj3595
	subw	$4,%ax
	je	Lj3613
	decw	%ax
	je	Lj3614
	decw	%ax
	je	Lj3615
	decw	%ax
	je	Lj3616
	decw	%ax
	je	Lj3617
	decw	%ax
	je	Lj3618
	subw	$235,%ax
	je	Lj3619
	jmp	Lj3584
Lj3585:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld29$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3586:
	movl	-12(%ebp),%eax
	movswl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3587:
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3588:
	movl	-12(%ebp),%eax
	flds	8(%eax)
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$-32767,%ecx
	movl	$-1,%edx
	movl	$0,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3589:
	movl	-12(%ebp),%eax
	fldl	8(%eax)
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$-32767,%ecx
	movl	$-1,%edx
	movl	$1,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3590:
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,(%esp)
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	$-32767,%edx
	movl	$-1,%eax
	call	Lfpc_write_text_currency$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3591:
	movl	-12(%ebp),%eax
	fldl	8(%eax)
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$-32767,%ecx
	movl	$-1,%edx
	movl	$1,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3592:
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_unicodestr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3593:
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-316(%ebp),%edx
	movl	$8,%eax
	call	L_SYSUTILS_INTTOHEX$QWORD$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3594:
	movl	-12(%ebp),%eax
	movw	8(%eax),%ax
	orw	%ax,%ax
	setneb	%cl
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_boolean$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3595:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$VARUTILS$_Ld30$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	L_$VARUTILS$_Ld31$non_lazy_ptr-Lj3301(%ebx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-312(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub
	jmp	Lj3302
	jmp	Lj3583
Lj3596:
	movl	-12(%ebp),%eax
	movsbl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3597:
	movl	-12(%ebp),%eax
	movzbl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3598:
	movl	-12(%ebp),%eax
	movzwl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3599:
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3600:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_int64$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3601:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_qword$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3602:
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3603:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld29$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3604:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movswl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3605:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3606:
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	flds	(%eax)
	fstpt	(%esp)
	movl	$-32767,%ecx
	movl	$-1,%edx
	movl	$0,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3607:
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fstpt	(%esp)
	movl	$-32767,%ecx
	movl	$-1,%edx
	movl	$1,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3608:
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	$-32767,%edx
	movl	$-1,%eax
	call	Lfpc_write_text_currency$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3609:
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	fldl	(%eax)
	fstpt	(%esp)
	movl	$-32767,%ecx
	movl	$-1,%edx
	movl	$1,%eax
	call	Lfpc_write_text_float$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3610:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_unicodestr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3611:
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-316(%ebp),%edx
	movl	$8,%eax
	call	L_SYSUTILS_INTTOHEX$QWORD$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3612:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	orw	%ax,%ax
	setneb	%cl
	movl	-4(%ebp),%eax
	movl	$0,%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	Lfpc_write_text_boolean$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3613:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movsbl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3614:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3615:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movzwl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3616:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3617:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_int64$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3618:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_qword$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3619:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3583
Lj3584:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld32$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
Lj3583:
	movl	-4(%ebp),%edx
	movb	$93,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj3523:
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld25$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld15$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	leal	-312(%ebp),%edx
	call	L_SYSTEM_HEXSTR$POINTER$$SHORTSTRING$stub
	leal	-312(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edx
	movl	L_$VARUTILS$_Ld26$non_lazy_ptr-Lj3301(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj3302:
	call	LFPC_POPADDRSTACK$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3303
	call	LFPC_RERAISE$stub
Lj3303:
	movl	-324(%ebp),%ebx
	movl	-320(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT
_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4016
	jmp	Lj4017
Lj4016:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj4022
Lj4017:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT$stub
Lj4022:
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_MAKEWIDESTRING$PWIDECHAR$WIDESTRING
_VARUTILS_MAKEWIDESTRING$PWIDECHAR$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj4026
Lj4026:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4027
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4032
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4026(%ebx),%edx
	movl	%edx,%eax
Lj4032:
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
Lj4027:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4028
	call	LFPC_RERAISE$stub
Lj4028:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTINIT$TVARDATA
_VARUTILS_VARIANTINIT$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	leal	2(%eax),%eax
	movb	$0,%cl
	movl	$14,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	8(%ebp),%eax
	movw	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT
_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	je	Lj4049
	jmp	Lj4050
Lj4049:
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYDESTROY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4055
	jmp	Lj4056
Lj4055:
	jmp	Lj4047
Lj4056:
	jmp	Lj4057
Lj4050:
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj4058
	jmp	Lj4059
Lj4058:
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	subw	$7,%ax
	jbe	Lj4062
	decw	%ax
	je	Lj4063
	decw	%ax
	je	Lj4064
	decw	%ax
	jb	Lj4061
	subw	$1,%ax
	jbe	Lj4062
	subw	$2,%ax
	je	Lj4064
	subw	$3,%ax
	jb	Lj4061
	subw	$3,%ax
	jbe	Lj4062
	decw	%ax
	subw	$1,%ax
	jbe	Lj4062
	jmp	Lj4061
Lj4062:
	jmp	Lj4060
Lj4063:
	movl	8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,8(%ebx)
	jmp	Lj4060
Lj4064:
	movl	8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,8(%ebx)
	jmp	Lj4060
Lj4061:
	movl	$-2147352568,-4(%ebp)
	jmp	Lj4047
Lj4060:
Lj4059:
Lj4057:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTINIT$TVARDATA$stub
	movl	$0,-4(%ebp)
Lj4047:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	cmpl	%edx,%eax
	je	Lj4077
	jmp	Lj4078
Lj4077:
	movl	$0,-4(%ebp)
	jmp	Lj4075
Lj4078:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4085
	jmp	Lj4086
Lj4085:
	jmp	Lj4075
Lj4086:
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4087
	jmp	Lj4088
Lj4087:
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	jmp	Lj4095
Lj4088:
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4096
	jmp	Lj4097
Lj4096:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj4100
Lj4097:
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	subw	$1,%ax
	jbe	Lj4103
	decw	%ax
	subw	$5,%ax
	jbe	Lj4104
	decw	%ax
	je	Lj4105
	decw	%ax
	je	Lj4106
	decw	%ax
	jb	Lj4102
	subw	$1,%ax
	jbe	Lj4104
	subw	$2,%ax
	je	Lj4107
	subw	$3,%ax
	jb	Lj4102
	subw	$3,%ax
	jbe	Lj4104
	decw	%ax
	subw	$1,%ax
	jbe	Lj4104
	jmp	Lj4102
Lj4103:
	jmp	Lj4101
Lj4104:
	movl	8(%ebp),%eax
	leal	2(%eax),%edx
	movl	12(%ebp),%eax
	leal	2(%eax),%eax
	movl	$14,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj4101
Lj4105:
	movl	12(%ebp),%eax
	movl	8(%eax),%edx
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR$stub
	jmp	Lj4101
Lj4106:
	movl	12(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,8(%ebx)
	jmp	Lj4101
Lj4107:
	movl	12(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,8(%ebx)
	jmp	Lj4101
Lj4102:
	movl	$-2147352568,-4(%ebp)
	jmp	Lj4075
Lj4101:
Lj4100:
Lj4095:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
Lj4075:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT
_VARUTILS_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj4128
	jmp	Lj4129
Lj4128:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	movl	%eax,-4(%ebp)
	jmp	Lj4126
Lj4129:
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4136
	jmp	Lj4137
Lj4136:
	movl	$-2147024809,-4(%ebp)
	jmp	Lj4126
Lj4137:
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	subw	$1,%ax
	jbe	Lj4142
	decw	%ax
	je	Lj4143
	decw	%ax
	je	Lj4144
	decw	%ax
	je	Lj4145
	decw	%ax
	je	Lj4146
	decw	%ax
	je	Lj4147
	decw	%ax
	je	Lj4148
	decw	%ax
	je	Lj4158
	decw	%ax
	je	Lj4159
	decw	%ax
	je	Lj4150
	decw	%ax
	je	Lj4149
	decw	%ax
	je	Lj4157
	decw	%ax
	je	Lj4159
	subw	$3,%ax
	je	Lj4153
	decw	%ax
	je	Lj4151
	decw	%ax
	je	Lj4152
	decw	%ax
	je	Lj4155
	decw	%ax
	je	Lj4154
	decw	%ax
	je	Lj4156
	jmp	Lj4141
Lj4142:
	jmp	Lj4140
Lj4143:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,8(%edx)
	jmp	Lj4140
Lj4144:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj4140
Lj4145:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj4140
Lj4146:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%ecx
	movl	(%eax),%edx
	movl	%edx,8(%ecx)
	movl	4(%eax),%eax
	movl	%eax,12(%ecx)
	jmp	Lj4140
Lj4147:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%ecx
	movl	(%eax),%edx
	movl	%edx,8(%ecx)
	movl	4(%eax),%eax
	movl	%eax,12(%ecx)
	jmp	Lj4140
Lj4148:
	movl	12(%ebp),%eax
	movl	8(%eax),%edx
	movl	8(%ebp),%ecx
	movl	(%edx),%eax
	movl	%eax,8(%ecx)
	movl	4(%edx),%eax
	movl	%eax,12(%ecx)
	jmp	Lj4140
Lj4149:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,8(%edx)
	jmp	Lj4140
Lj4150:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj4140
Lj4151:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movb	(%eax),%al
	movb	%al,8(%edx)
	jmp	Lj4140
Lj4152:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,8(%edx)
	jmp	Lj4140
Lj4153:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movb	(%eax),%al
	movb	%al,8(%edx)
	jmp	Lj4140
Lj4154:
	movl	12(%ebp),%eax
	movl	8(%eax),%edx
	movl	8(%ebp),%ecx
	movl	(%edx),%eax
	movl	%eax,8(%ecx)
	movl	4(%edx),%eax
	movl	%eax,12(%ecx)
	jmp	Lj4140
Lj4155:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj4140
Lj4156:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%ecx
	movl	(%eax),%edx
	movl	%edx,8(%ecx)
	movl	4(%eax),%eax
	movl	%eax,12(%ecx)
	jmp	Lj4140
Lj4157:
	movl	12(%ebp),%eax
	movl	8(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj4140
Lj4158:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%edx
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR$stub
	jmp	Lj4140
Lj4159:
	movl	12(%ebp),%eax
	movl	8(%eax),%esi
	movl	(%esi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,8(%ebx)
	jmp	Lj4140
Lj4141:
	movl	$-2147352568,-4(%ebp)
	jmp	Lj4126
Lj4140:
	movl	12(%ebp),%eax
	movw	(%eax),%dx
	andw	$4095,%dx
	movl	8(%ebp),%eax
	movw	%dx,(%eax)
	movl	$0,-4(%ebp)
Lj4126:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$LONGINT$WORD$WORD$$HRESULT
_VARUTILS_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$LONGINT$WORD$WORD$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-192(%ebp)
	call	Lj4205
Lj4205:
	popl	%ebx
	movl	$0,-144(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj4206
	movw	24(%ebp),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4209
	jmp	Lj4212
Lj4212:
	movl	12(%ebp),%eax
	movw	(%eax),%ax
	andw	$8192,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4209
	jmp	Lj4211
Lj4211:
	movw	24(%ebp),%ax
	andw	$16384,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4209
	jmp	Lj4210
Lj4209:
	movl	$-2147024809,-4(%ebp)
	jmp	Lj4206
Lj4210:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4221
	jmp	Lj4222
Lj4221:
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj4223
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4231
	jmp	Lj4232
Lj4231:
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj4235
	movw	24(%ebp),%ax
	cmpw	$2,%ax
	jb	Lj4240
	subw	$2,%ax
	je	Lj4241
	decw	%ax
	je	Lj4242
	decw	%ax
	je	Lj4243
	decw	%ax
	je	Lj4244
	decw	%ax
	je	Lj4245
	decw	%ax
	je	Lj4246
	decw	%ax
	je	Lj4247
	decw	%ax
	je	Lj4248
	subw	$2,%ax
	je	Lj4250
	subw	$2,%ax
	je	Lj4249
	subw	$3,%ax
	je	Lj4252
	decw	%ax
	je	Lj4251
	subw	$2,%ax
	je	Lj4254
	decw	%ax
	je	Lj4253
	decw	%ax
	je	Lj4255
	jmp	Lj4240
Lj4241:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT$stub
	movl	8(%ebp),%edx
	movw	%ax,8(%edx)
	jmp	Lj4239
Lj4242:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub
	movl	8(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj4239
Lj4243:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE$stub
	movl	8(%ebp),%eax
	fstps	8(%eax)
	jmp	Lj4239
Lj4244:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub
	movl	8(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4239
Lj4245:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub
	movl	8(%ebp),%eax
	fistpq	8(%eax)
	jmp	Lj4239
Lj4246:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub
	movl	8(%ebp),%eax
	fstpl	8(%eax)
	jmp	Lj4239
Lj4247:
	leal	-144(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub
	movl	-144(%ebp),%edx
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_VARUTILS_MAKEWIDESTRING$PWIDECHAR$WIDESTRING$stub
	jmp	Lj4239
Lj4248:
	movl	$-2147352571,-4(%ebp)
	jmp	Lj4239
Lj4249:
	movl	$-2147352571,-4(%ebp)
	jmp	Lj4239
Lj4250:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbw	%al,%ax
	negw	%ax
	movl	8(%ebp),%edx
	movw	%ax,8(%edx)
	jmp	Lj4239
Lj4251:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE$stub
	movl	8(%ebp),%edx
	movb	%al,8(%edx)
	jmp	Lj4239
Lj4252:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT$stub
	movl	8(%ebp),%edx
	movb	%al,8(%edx)
	jmp	Lj4239
Lj4253:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub
	movl	8(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	jmp	Lj4239
Lj4254:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD$stub
	movl	8(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj4239
Lj4255:
	leal	-20(%ebp),%eax
	call	L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub
	movl	8(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	jmp	Lj4239
Lj4240:
	movl	$-2147352568,-4(%ebp)
Lj4239:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4320
	jmp	Lj4321
Lj4320:
	movl	8(%ebp),%eax
	movw	24(%ebp),%dx
	movw	%dx,(%eax)
Lj4321:
Lj4235:
	call	LFPC_POPADDRSTACK$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj4237
	movl	L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr-Lj4205(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4324
	movl	%eax,-148(%ebp)
	leal	-160(%ebp),%ecx
	leal	-184(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-188(%ebp)
	testl	%eax,%eax
	jne	Lj4325
	movl	-148(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-4(%ebp)
Lj4325:
	call	LFPC_POPADDRSTACK$stub
	movl	-188(%ebp),%eax
	testl	%eax,%eax
	je	Lj4329
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4329:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4237
Lj4324:
	leal	-188(%ebp),%ecx
	leal	-168(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-172(%ebp)
	testl	%eax,%eax
	jne	Lj4331
	movl	$-2147024809,-4(%ebp)
Lj4331:
	call	LFPC_POPADDRSTACK$stub
	movl	-172(%ebp),%eax
	testl	%eax,%eax
	je	Lj4330
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4330:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4237
Lj4237:
Lj4232:
Lj4223:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%edx
	movl	%edx,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj4224
	decl	%eax
	testl	%eax,%eax
	je	Lj4225
Lj4225:
	call	LFPC_RERAISE$stub
Lj4224:
Lj4222:
Lj4206:
	call	LFPC_POPADDRSTACK$stub
	leal	-144(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj4207
	call	LFPC_RERAISE$stub
Lj4207:
	movl	-4(%ebp),%eax
	movl	-192(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
_VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj4338
	jmp	Lj4339
Lj4338:
	movl	$0,-8(%ebp)
	jmp	Lj4342
Lj4339:
	movl	$-2147352563,-8(%ebp)
Lj4342:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT
_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4347
	jmp	Lj4348
Lj4347:
	movl	$-2147024809,-8(%ebp)
	jmp	Lj4351
Lj4348:
	movl	$0,-8(%ebp)
Lj4351:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER
_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT
_VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-28(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4368
	jmp	Lj4369
Lj4368:
	jmp	Lj4358
Lj4369:
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj4373
	decl	-20(%ebp)
	.align 2
Lj4374:
	incl	-20(%ebp)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	movl	-20(%ebp),%ecx
	subl	%ecx,%edx
	decl	%edx
	movl	-4(%ebp),%esi
	movl	-20(%ebp),%edi
	movl	(%ebx,%edx,4),%ecx
	movl	20(%esi,%edi,8),%edx
	subl	%edx,%ecx
	movl	%ecx,-32(%ebp)
	movl	-32(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4377
	jmp	Lj4379
Lj4379:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	16(%ecx,%edx,8),%edx
	cmpl	-32(%ebp),%edx
	jle	Lj4377
	jmp	Lj4378
Lj4377:
	movl	$-2147352565,-16(%ebp)
	jmp	Lj4358
Lj4378:
	movl	-20(%ebp),%edx
	testl	%edx,%edx
	je	Lj4382
	jmp	Lj4383
Lj4382:
	movl	-32(%ebp),%edx
	movl	%edx,-28(%ebp)
	jmp	Lj4386
Lj4383:
	movl	-32(%ebp),%edx
	movl	-24(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-28(%ebp)
Lj4386:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	16(%ecx,%edx,8),%edx
	addl	%edx,-24(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj4374
Lj4373:
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	cmpb	$0,8(%ebp)
	jne	Lj4393
	jmp	Lj4394
Lj4393:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-16(%ebp)
Lj4394:
Lj4358:
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT
_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	$1,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%edx
	decl	%edx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%edx
	jl	Lj4406
	decl	-12(%ebp)
	.align 2
Lj4407:
	incl	-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	16(%eax,%ecx,8),%ecx
	movl	-8(%ebp),%ebx
	imull	%ebx,%ecx
	movl	%ecx,-8(%ebp)
	cmpl	-12(%ebp),%edx
	jg	Lj4407
Lj4406:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$1024,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4412
	jmp	Lj4414
Lj4414:
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$512,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4412
	jmp	Lj4413
Lj4412:
	movl	$1,-8(%ebp)
	jmp	Lj4417
Lj4413:
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$256,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4418
	jmp	Lj4419
Lj4418:
	movl	$2,-8(%ebp)
	jmp	Lj4422
Lj4419:
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	andw	$2048,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4423
	jmp	Lj4424
Lj4423:
	movl	$3,-8(%ebp)
	jmp	Lj4427
Lj4424:
	movl	$0,-8(%ebp)
Lj4427:
Lj4422:
Lj4417:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
_VARUTILS_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj4431
Lj4431:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj4434
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj4448
	decl	%eax
	je	Lj4449
	decl	%eax
	je	Lj4450
	decl	%eax
	je	Lj4451
	jmp	Lj4447
Lj4448:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-28(%ebp),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	jmp	Lj4446
Lj4449:
	movl	-28(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj4459
	decl	-24(%ebp)
	.align 2
Lj4460:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,(%edi)
	cmpl	-24(%ebp),%esi
	jg	Lj4460
Lj4459:
	jmp	Lj4446
Lj4450:
	movl	-28(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj4470
	decl	-24(%ebp)
	.align 2
Lj4471:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%edi)
	cmpl	-24(%ebp),%esi
	jg	Lj4471
Lj4470:
	jmp	Lj4446
Lj4451:
	movl	-28(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj4481
	decl	-24(%ebp)
	.align 2
Lj4482:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
	cmpl	-24(%ebp),%esi
	jg	Lj4482
Lj4481:
	jmp	Lj4446
Lj4447:
Lj4446:
	movl	$0,-12(%ebp)
Lj4434:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj4436
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4431(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4493
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj4494
	movl	-72(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-12(%ebp)
Lj4494:
	call	LFPC_POPADDRSTACK$stub
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj4500
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4500:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4436
Lj4493:
	call	LFPC_RERAISE$stub
Lj4436:
	movl	-12(%ebp),%eax
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-132(%ebp)
	movl	%esi,-128(%ebp)
	movl	%edi,-124(%ebp)
	call	Lj4502
Lj4502:
	popl	-120(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj4505
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj4519
	decl	%eax
	je	Lj4520
	decl	%eax
	je	Lj4521
	decl	%eax
	je	Lj4522
	jmp	Lj4518
Lj4519:
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-32(%ebp),%eax
	imull	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj4517
Lj4520:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4530
	decl	-28(%ebp)
	.align 2
Lj4531:
	incl	-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edi
	movl	(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-24(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	(%edi),%eax
	movl	%eax,(%esi)
	cmpl	-28(%ebp),%ebx
	jg	Lj4531
Lj4530:
	jmp	Lj4517
Lj4521:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4547
	decl	-28(%ebp)
	.align 2
Lj4548:
	incl	-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edi
	movl	(%edi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-24(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%edi),%eax
	movl	%eax,(%esi)
	cmpl	-28(%ebp),%ebx
	jg	Lj4548
Lj4547:
	jmp	Lj4517
Lj4522:
	movl	-32(%ebp),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4564
	decl	-28(%ebp)
	.align 2
Lj4565:
	incl	-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	cmpl	-28(%ebp),%ebx
	jg	Lj4565
Lj4564:
	jmp	Lj4517
Lj4518:
Lj4517:
	movl	$0,-12(%ebp)
Lj4505:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj4507
	movl	-120(%ebp),%edx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4502(%edx),%ecx
	movl	%ecx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4584
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj4585
	movl	-76(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-12(%ebp)
Lj4585:
	call	LFPC_POPADDRSTACK$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj4591
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4591:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4507
Lj4584:
	call	LFPC_RERAISE$stub
Lj4507:
	movl	-12(%ebp),%eax
	movl	-132(%ebp),%ebx
	movl	-128(%ebp),%esi
	movl	-124(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY
_VARUTILS_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj4593
Lj4593:
	popl	%ebx
	movl	$0,-4(%ebp)
	movl	8(%ebp),%eax
	subl	$2,%eax
	cmpl	$12,%eax
	jb	Lj4598
	subl	$14,%eax
	cmpl	$6,%eax
	jb	Lj4598
Lj4598:
	jnc	Lj4596
	jmp	Lj4597
Lj4596:
	jmp	Lj4592
Lj4597:
	leal	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4605
	jmp	Lj4606
Lj4605:
	jmp	Lj4592
Lj4606:
	movl	-4(%ebp),%edx
	movw	12(%ebp),%ax
	movw	%ax,(%edx)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	L_TC_VARUTILS_PSAELEMENTFLAGS$non_lazy_ptr-Lj4593(%ebx),%edx
	movw	(%edx,%eax,4),%ax
	movw	%ax,2(%ecx)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	L_TC_VARUTILS_PSAELEMENTSIZES$non_lazy_ptr-Lj4593(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,4(%ecx)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	12(%ebp),%eax
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jb	Lj4616
	decl	-12(%ebp)
	.align 2
Lj4617:
	incl	-12(%ebp)
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%esi
	subl	%esi,%edx
	decl	%edx
	movl	-4(%ebp),%edi
	movl	-12(%ebp),%esi
	movl	4(%ecx,%edx,8),%edx
	movl	%edx,20(%edi,%esi,8)
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%esi
	subl	%esi,%edx
	decl	%edx
	movl	-4(%ebp),%edi
	movl	-12(%ebp),%esi
	movl	(%ecx,%edx,8),%edx
	movl	%edx,16(%edi,%esi,8)
	cmpl	-12(%ebp),%eax
	ja	Lj4617
Lj4616:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4626
	jmp	Lj4627
Lj4626:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT$stub
	movl	$0,-4(%ebp)
Lj4627:
Lj4592:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj4633
Lj4633:
	popl	%ebx
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj4636
	movl	8(%ebp),%eax
	decl	%eax
	shll	$3,%eax
	addl	$24,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
	movl	$0,-4(%ebp)
Lj4636:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4638
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4633(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4646
	movl	%eax,-48(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4647
	movl	-48(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4647:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4653
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4653:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4638
Lj4646:
	call	LFPC_RERAISE$stub
Lj4638:
	movl	-4(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj4655
Lj4655:
	popl	%esi
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj4658
	movl	8(%ebp),%ebx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT$stub
	movl	4(%ebx),%edx
	imull	%edx,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,12(%ebx)
	movl	8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT$stub
	movl	%eax,%edx
	movl	4(%ebx),%eax
	imull	%eax,%edx
	movl	12(%ebx),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	$0,-4(%ebp)
Lj4658:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4660
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4655(%esi),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4680
	movl	%eax,-48(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4681
	movl	-48(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4681:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4687
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4687:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4660
Lj4680:
	call	LFPC_RERAISE$stub
Lj4660:
	movl	-4(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYDESTROY$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYDESTROY$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4694
	jmp	Lj4695
Lj4694:
	jmp	Lj4688
Lj4695:
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4700
	jmp	Lj4701
Lj4700:
	jmp	Lj4688
Lj4701:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4706
	jmp	Lj4707
Lj4706:
	jmp	Lj4688
Lj4707:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4688:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj4713
Lj4713:
	popl	%ebx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4718
	jmp	Lj4719
Lj4718:
	jmp	Lj4712
Lj4719:
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4724
	jmp	Lj4725
Lj4724:
	jmp	Lj4712
Lj4725:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj4728
	movl	8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj4728:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4730
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4713(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4734
	movl	%eax,-48(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4735
	movl	-48(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4735:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4741
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4741:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4730
Lj4734:
	call	LFPC_RERAISE$stub
Lj4730:
Lj4712:
	movl	-4(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj4743
Lj4743:
	popl	%ebx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4748
	jmp	Lj4749
Lj4748:
	jmp	Lj4742
Lj4749:
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4754
	jmp	Lj4755
Lj4754:
	jmp	Lj4742
Lj4755:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj4758
	movl	8(%ebp),%eax
	movb	$0,%dl
	call	L_VARUTILS_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4770
	jmp	Lj4769
Lj4770:
	movl	8(%ebp),%eax
	movw	2(%eax),%ax
	andw	$16,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj4768
	jmp	Lj4769
Lj4768:
	movl	8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	8(%ebp),%eax
	movl	$0,12(%eax)
Lj4769:
Lj4758:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4760
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4743(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4775
	movl	%eax,-48(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4776
	movl	-48(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4776:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4782
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4782:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4760
Lj4775:
	call	LFPC_RERAISE$stub
Lj4760:
Lj4742:
	movl	-4(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT
_VARUTILS_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj4784
Lj4784:
	popl	%ebx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4789
	jmp	Lj4790
Lj4789:
	jmp	Lj4783
Lj4790:
	movl	8(%ebp),%eax
	movw	2(%eax),%ax
	andw	$16,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj4791
	jmp	Lj4792
Lj4791:
	movl	$-2147024809,-4(%ebp)
	jmp	Lj4783
Lj4792:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4799
	jmp	Lj4800
Lj4799:
	jmp	Lj4783
Lj4800:
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj4803
	movl	8(%ebp),%eax
	movl	12(%ebp),%ecx
	movl	16(%eax),%edx
	movl	(%ecx),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	decl	%eax
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj4810
	decl	-12(%ebp)
	.align 2
Lj4811:
	incl	-12(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	16(%edx,%ecx,8),%ecx
	movl	-16(%ebp),%edx
	imull	%edx,%ecx
	movl	%ecx,-16(%ebp)
	cmpl	-12(%ebp),%eax
	jg	Lj4811
Lj4810:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4814
	jmp	Lj4815
Lj4814:
	movl	8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4820
	jmp	Lj4821
Lj4820:
	movl	8(%ebp),%eax
	call	L_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE$stub
	movl	%eax,-8(%ebp)
	movl	-24(%ebp),%esi
	movl	-16(%ebp),%eax
	addl	%eax,%esi
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj4827
	incl	-20(%ebp)
	.align 2
Lj4828:
	decl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj4835
	jmp	Lj4836
Lj4835:
	movl	-28(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,(%edi)
	jmp	Lj4839
Lj4836:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj4840
	jmp	Lj4841
Lj4840:
	movl	-28(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%edi)
	jmp	Lj4844
Lj4841:
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	je	Lj4845
	jmp	Lj4846
Lj4845:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub
Lj4846:
Lj4844:
Lj4839:
	cmpl	-20(%ebp),%esi
	jl	Lj4828
Lj4827:
Lj4821:
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	imull	%eax,%edx
	movl	8(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4853
	jmp	Lj4854
Lj4853:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-24(%ebp),%edx
	imull	%edx,%eax
	movl	8(%ebp),%edx
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-16(%ebp),%ecx
	imull	%ecx,%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj4854:
Lj4815:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
Lj4803:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj4805
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4784(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4865
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj4866
	movl	-72(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4866:
	call	LFPC_POPADDRSTACK$stub
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj4872
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4872:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4805
Lj4865:
	call	LFPC_RERAISE$stub
Lj4805:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub
Lj4783:
	movl	-4(%ebp),%eax
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj4878
Lj4878:
	popl	%ebx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4883
	jmp	Lj4884
Lj4883:
	jmp	Lj4877
Lj4884:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4889
	jmp	Lj4890
Lj4889:
	jmp	Lj4877
Lj4890:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4893
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4903
	jmp	Lj4904
Lj4903:
	jmp	Lj4891
Lj4904:
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4905
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movw	2(%edx),%dx
	movw	%dx,2(%eax)
	movl	8(%ebp),%edx
	movl	4(%edx),%edx
	movl	%edx,4(%eax)
	movl	$0,8(%eax)
	movl	8(%ebp),%edx
	movw	(%edx),%dx
	movw	%dx,(%eax)
	movzwl	(%eax),%edx
	decl	%edx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%edx
	jl	Lj4920
	decl	-8(%ebp)
	.align 2
Lj4921:
	incl	-8(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edi
	movl	-8(%ebp),%esi
	movl	16(%ecx,%edi,8),%ecx
	movl	%ecx,16(%eax,%esi,8)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edi
	movl	-8(%ebp),%esi
	movl	20(%ecx,%edi,8),%ecx
	movl	%ecx,20(%eax,%esi,8)
	cmpl	-8(%ebp),%edx
	jg	Lj4921
Lj4920:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4930
	jmp	Lj4931
Lj4930:
	jmp	Lj4908
Lj4931:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4905:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4938
	jmp	Lj4939
Lj4938:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT$stub
	movl	12(%ebp),%eax
	movl	$0,(%eax)
Lj4939:
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4906
	decl	%eax
	testl	%eax,%eax
	je	Lj4907
	decl	%eax
	testl	%eax,%eax
	je	Lj4891
Lj4907:
	call	LFPC_RERAISE$stub
Lj4908:
	movl	-88(%ebp),%eax
	movl	$2,-88(%ebp)
	jmp	Lj4905
Lj4906:
Lj4893:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4895
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4878(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj4944
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4945
	movl	-52(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4945:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4951
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4951:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4895
Lj4944:
	call	LFPC_RERAISE$stub
Lj4891:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	jmp	Lj4877
Lj4895:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub
Lj4877:
	movl	-4(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYCOPYDATA$PVARARRAY$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYCOPYDATA$PVARARRAY$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4962
	jmp	Lj4963
Lj4962:
	jmp	Lj4956
Lj4963:
	movl	12(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4968
	jmp	Lj4969
Lj4968:
	jmp	Lj4956
Lj4969:
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4974
	jmp	Lj4975
Lj4974:
	jmp	Lj4956
Lj4975:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4976
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4984
	jmp	Lj4985
Lj4984:
	jmp	Lj4979
Lj4985:
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4986
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	movw	2(%edx),%dx
	cmpw	2(%eax),%dx
	jne	Lj4992
	jmp	Lj4995
Lj4995:
	movl	8(%ebp),%edx
	movl	4(%edx),%edx
	cmpl	4(%eax),%edx
	jne	Lj4992
	jmp	Lj4994
Lj4994:
	movl	8(%ebp),%edx
	movw	(%edx),%dx
	cmpw	(%eax),%dx
	jne	Lj4992
	jmp	Lj4993
Lj4992:
	movl	$-2147024809,-4(%ebp)
	jmp	Lj4989
Lj4993:
	movl	8(%ebp),%edx
	movzwl	(%edx),%edx
	decl	%edx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%edx
	jl	Lj4999
	decl	-8(%ebp)
	.align 2
Lj5000:
	incl	-8(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	20(%ecx,%ebx,8),%ecx
	cmpl	20(%eax,%esi,8),%ecx
	jne	Lj5001
	jmp	Lj5003
Lj5003:
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	16(%ecx,%ebx,8),%ecx
	cmpl	16(%eax,%esi,8),%ecx
	jne	Lj5001
	jmp	Lj5002
Lj5001:
	movl	$-2147024809,-4(%ebp)
	jmp	Lj4989
Lj5002:
	cmpl	-8(%ebp),%edx
	jg	Lj5000
Lj4999:
	movl	12(%ebp),%eax
	movb	$1,%dl
	call	L_VARUTILS_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5012
	jmp	Lj5013
Lj5012:
	jmp	Lj4989
Lj5013:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj4986:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4987
	decl	%eax
	testl	%eax,%eax
	je	Lj4988
	decl	%eax
	testl	%eax,%eax
	je	Lj4979
Lj4988:
	call	LFPC_RERAISE$stub
Lj4989:
	movl	-88(%ebp),%eax
	movl	$2,-88(%ebp)
	jmp	Lj4986
Lj4987:
Lj4976:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4977
	decl	%eax
	testl	%eax,%eax
	je	Lj4978
	decl	%eax
	testl	%eax,%eax
	je	Lj4956
Lj4978:
	call	LFPC_RERAISE$stub
Lj4979:
	movl	-48(%ebp),%eax
	movl	$2,-48(%ebp)
	jmp	Lj4976
Lj4977:
Lj4956:
	movl	-4(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT
_VARUTILS_SAFEARRAYGETLBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5034
	jmp	Lj5035
Lj5034:
	jmp	Lj5028
Lj5035:
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj5038
	jmp	Lj5037
Lj5038:
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	12(%ebp),%eax
	jae	Lj5036
	jmp	Lj5037
Lj5036:
	movl	8(%ebp),%ecx
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	12(%ebp),%edx
	subl	%edx,%eax
	movl	16(%ebp),%edx
	movl	20(%ecx,%eax,8),%eax
	movl	%eax,(%edx)
	jmp	Lj5041
Lj5037:
	movl	$-2147352565,-4(%ebp)
Lj5041:
Lj5028:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT
_VARUTILS_SAFEARRAYGETUBOUND$PVARARRAY$LONGWORD$LONGINT$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5050
	jmp	Lj5051
Lj5050:
	jmp	Lj5044
Lj5051:
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj5054
	jmp	Lj5053
Lj5054:
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	12(%ebp),%eax
	jae	Lj5052
	jmp	Lj5053
Lj5052:
	movl	8(%ebp),%ecx
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	12(%ebp),%edx
	subl	%edx,%eax
	movl	8(%ebp),%ebx
	movl	8(%ebp),%edx
	movzwl	(%edx),%edx
	movl	12(%ebp),%esi
	subl	%esi,%edx
	movl	20(%ecx,%eax,8),%ecx
	movl	16(%ebx,%edx,8),%eax
	addl	%eax,%ecx
	decl	%ecx
	movl	16(%ebp),%eax
	movl	%ecx,(%eax)
	jmp	Lj5057
Lj5053:
	movl	$-2147352565,-4(%ebp)
Lj5057:
Lj5044:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYGETDIM$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYGETDIM$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	testl	%eax,%eax
	jne	Lj5062
	jmp	Lj5063
Lj5062:
	movl	$0,-4(%ebp)
	jmp	Lj5068
Lj5063:
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-4(%ebp)
Lj5068:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT
_VARUTILS_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5077
	jmp	Lj5078
Lj5077:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj5081
Lj5078:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,(%edx)
Lj5081:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYUNACCESSDATA$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYUNACCESSDATA$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5096
	jmp	Lj5097
Lj5096:
	jmp	Lj5090
Lj5097:
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT$stub
Lj5090:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT
_VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5106
	jmp	Lj5107
Lj5106:
	jmp	Lj5100
Lj5107:
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT$stub
	cmpl	$0,%eax
	jl	Lj5108
	jmp	Lj5109
Lj5108:
	movl	8(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT$stub
	movl	$-2147418113,-4(%ebp)
Lj5109:
Lj5100:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
_VARUTILS_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj5117
Lj5117:
	popl	%ebx
	movb	$1,(%esp)
	leal	-8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5128
	jmp	Lj5129
Lj5128:
	jmp	Lj5116
Lj5129:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5132
	movl	8(%ebp),%eax
	call	L_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE$stub
	testl	%eax,%eax
	je	Lj5138
	decl	%eax
	je	Lj5139
	decl	%eax
	je	Lj5140
	decl	%eax
	je	Lj5141
	jmp	Lj5137
Lj5138:
	movl	8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj5136
Lj5139:
	movl	-8(%ebp),%edi
	movl	(%edi),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	16(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	(%edi),%eax
	movl	%eax,(%esi)
	jmp	Lj5136
Lj5140:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	16(%ebp),%eax
	call	L_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR$stub
	jmp	Lj5136
Lj5141:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	jmp	Lj5136
Lj5137:
Lj5136:
Lj5132:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj5134
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj5117(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj5160
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5161
	movl	-52(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj5161:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5167
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj5167:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj5134
Lj5160:
	call	LFPC_RERAISE$stub
Lj5134:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub
Lj5116:
	movl	-4(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
_VARUTILS_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj5173
Lj5173:
	popl	%ebx
	movb	$1,(%esp)
	leal	-8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5184
	jmp	Lj5185
Lj5184:
	jmp	Lj5172
Lj5185:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5188
	movl	8(%ebp),%eax
	call	L_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE$stub
	testl	%eax,%eax
	je	Lj5194
	decl	%eax
	je	Lj5195
	decl	%eax
	je	Lj5196
	decl	%eax
	je	Lj5197
	jmp	Lj5193
Lj5194:
	movl	8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj5192
Lj5195:
	movl	16(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	16(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj5192
Lj5196:
	movl	-8(%ebp),%eax
	movl	16(%ebp),%edx
	call	L_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR$stub
	jmp	Lj5192
Lj5197:
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub
	jmp	Lj5192
Lj5193:
Lj5192:
Lj5188:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj5190
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj5173(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj5216
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5217
	movl	-52(%ebp),%eax
	call	L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub
	movl	%eax,-4(%ebp)
Lj5217:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5223
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj5223:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj5190
Lj5216:
	call	LFPC_RERAISE$stub
Lj5190:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub
Lj5172:
	movl	-4(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
_VARUTILS_SAFEARRAYPTROFINDEX$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$0,(%esp)
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_VARUTILS_SAFEARRAYGETELEMSIZE$PVARARRAY$$LONGWORD
_VARUTILS_SAFEARRAYGETELEMSIZE$PVARARRAY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	call	L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub
	testl	%eax,%eax
	jne	Lj5242
	jmp	Lj5243
Lj5242:
	movl	$0,-4(%ebp)
	jmp	Lj5248
Lj5243:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
Lj5248:
	movl	-4(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_VARUTILS
_THREADVARLIST_VARUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_VARUTILS_CVARTYPETOELEMENTINFO
_TC_VARUTILS_CVARTYPETOELEMENTINFO:
	.byte	1,1,0,0
	.long	0
	.short	0
	.byte	0,0,1,1,0,0
	.long	0
	.short	0
	.byte	0,0,1,1,0,0
	.long	2
	.short	0
	.byte	0,0,1,1,0,0
	.long	4
	.short	0
	.byte	0,0,1,1,0,0
	.long	4
	.short	0
	.byte	0,0,1,1,0,0
	.long	8
	.short	0
	.byte	0,0,1,1,0,0
	.long	8
	.short	0
	.byte	0,0,1,1,0,0
	.long	8
	.short	0
	.byte	0,0,1,1,0,0
	.long	4
	.short	256
	.byte	0,0,1,1,0,0
	.long	4
	.short	1024
	.byte	0,0,1,1,0,0
	.long	4
	.short	0
	.byte	0,0,1,1,0,0
	.long	2
	.short	0
	.byte	0,0,1,1,0,0
	.long	16
	.short	0
	.byte	0,0,1,1,0,0
	.long	4
	.short	2048
	.byte	0,0,0,1,0,0
	.long	14
	.short	512
	.byte	0,0,0,0,0,0
	.long	4
	.short	0
	.byte	0,0,1,1,0,0
	.long	1
	.short	0
	.byte	0,0,1,1,0,0
	.long	1
	.short	0
	.byte	0,0,1,1,0,0
	.long	2
	.short	0
	.byte	0,0,1,1,0,0
	.long	4
	.short	0
	.byte	0,0,1,1,0,0
	.long	8
	.short	0
	.byte	0,0,1,1,0,0
	.long	8
	.short	0
	.byte	0,0

.const
	.align 2
.globl	_$VARUTILS$_Ld1
_$VARUTILS$_Ld1:
	.byte	16,39,0,0,0,0,0,0

.const
	.align 2
.globl	_$VARUTILS$_Ld2
_$VARUTILS$_Ld2:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld3
_$VARUTILS$_Ld3:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld4
_$VARUTILS$_Ld4:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld5
_$VARUTILS$_Ld5:
	.long	0,-2147483648,16447

.const
	.align 3
.globl	_$VARUTILS$_Ld6
_$VARUTILS$_Ld6:
	.byte	0,0,0,0,0,0,64,156,12,64

.const
	.align 2
.globl	_$VARUTILS$_Ld7
_$VARUTILS$_Ld7:
	.byte	0,64,28,70

.const
	.align 2
.globl	_$VARUTILS$_Ld8
_$VARUTILS$_Ld8:
	.byte	0,0,0,0,0,136,195,64

.const
	.align 2
.globl	_$VARUTILS$_Ld9
_$VARUTILS$_Ld9:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld10
_$VARUTILS$_Ld10:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld11
_$VARUTILS$_Ld11:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld12
_$VARUTILS$_Ld12:
	.long	0,-2147483648,16447

.const
	.align 2
.globl	_$VARUTILS$_Ld13
_$VARUTILS$_Ld13:
	.ascii	"\000\000"

.data
	.align 3
.globl	_TC_VARUTILS_VARTYPESTRINGS
_TC_VARUTILS_VARTYPESTRINGS:
	.byte	5
	.ascii	"empty"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                              "
	.byte	4
	.ascii	"null"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                               "
	.byte	8
	.ascii	"smallint"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                           "
	.byte	7
	.ascii	"integer"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                            "
	.byte	6
	.ascii	"single"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                             "
	.byte	6
	.ascii	"double"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                             "
	.byte	8
	.ascii	"currency"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                           "
	.byte	4
	.ascii	"date"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                               "
	.byte	6
	.ascii	"olestr"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                             "
	.byte	8
	.ascii	"dispatch"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                           "
	.byte	5
	.ascii	"error"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                              "
	.byte	7
	.ascii	"boolean"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                            "
	.byte	7
	.ascii	"variant"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                            "
	.byte	7
	.ascii	"unknown"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                            "
	.byte	7
	.ascii	"decimal"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                            "
	.byte	9
	.ascii	"undefined"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                          "
	.byte	8
	.ascii	"shortint"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                           "
	.byte	4
	.ascii	"byte"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                               "
	.byte	4
	.ascii	"word"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                               "
	.byte	8
	.ascii	"longword"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                           "
	.byte	5
	.ascii	"int64"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                              "
	.byte	5
	.ascii	"qword"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                              "

.const
	.align 2
.globl	_$VARUTILS$_Ld14
_$VARUTILS$_Ld14:
	.ascii	"\005---> \000"

.const
	.align 2
.globl	_$VARUTILS$_Ld15
_$VARUTILS$_Ld15:
	.ascii	"\005 at $\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld16
_$VARUTILS$_Ld16:
	.ascii	"\022 <----------------\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld17
_$VARUTILS$_Ld17:
	.ascii	"\030Variant is by reference.\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld18
_$VARUTILS$_Ld18:
	.ascii	"\024Variant is an array.\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld19
_$VARUTILS$_Ld19:
	.ascii	"(Variant has unknown flags set in type: $\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld20
_$VARUTILS$_Ld20:
	.ascii	"\023Variant has type : \000"

.const
	.align 2
.globl	_$VARUTILS$_Ld21
_$VARUTILS$_Ld21:
	.ascii	"\031Variant has type : string\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld22
_$VARUTILS$_Ld22:
	.ascii	" Variant has type : UnicodeString\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld23
_$VARUTILS$_Ld23:
	.ascii	"\034Variant has unknown type : $\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld24
_$VARUTILS$_Ld24:
	.ascii	"\007Bytes :\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld25
_$VARUTILS$_Ld25:
	.ascii	"\005---< \000"

.const
	.align 2
.globl	_$VARUTILS$_Ld26
_$VARUTILS$_Ld26:
	.ascii	"\022 >----------------\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld27
_$VARUTILS$_Ld27:
	.ascii	"\013Value is: [\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld28
_$VARUTILS$_Ld28:
	.ascii	"\004nil]\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld29
_$VARUTILS$_Ld29:
	.ascii	"\004Null\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld30
_$VARUTILS$_Ld30:
	.ascii	"\023 dereferencing -> ]\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld31
_$VARUTILS$_Ld31:
	.ascii	"\001^\000"

.const
	.align 2
.globl	_$VARUTILS$_Ld32
_$VARUTILS$_Ld32:
	.ascii	"\013Unsupported\000"

.data
	.align 2
.globl	_TC_VARUTILS_PSAELEMENTFLAGS
_TC_VARUTILS_PSAELEMENTFLAGS:
	.long	0,0,0,0,0,0,0,0,256,1024,0,0,2048,512,0,0,0,0,0,0,0,0

.data
.globl	_TC_VARUTILS_PSAELEMENTSIZES
_TC_VARUTILS_PSAELEMENTSIZES:
	.byte	0,0,2,4,4,8,8,8,4,4,4,1,16,4,0,0,1,1,2,4,8,8
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EVARIANTERROR_$__CREATECODE$LONGINT$$EVARIANTERROR$stub:
.indirect_symbol _SYSUTILS_EVARIANTERROR_$__CREATECODE$LONGINT$$EVARIANTERROR
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_sint_unicodestr$stub:
.indirect_symbol fpc_val_sint_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD$stub:
.indirect_symbol _VARUTILS_VARIANTTYPEMISMATCH$WORD$WORD
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

L_VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT$stub:
.indirect_symbol _VARUTILS_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOSMALLINT$POINTER$$SMALLINT$stub:
.indirect_symbol _VARUTILS_WSTRTOSMALLINT$POINTER$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOSMALLINT$POINTER$$SMALLINT$stub:
.indirect_symbol _VARUTILS_LSTRTOSMALLINT$POINTER$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOSMALLINT$POINTER$$SMALLINT$stub:
.indirect_symbol _VARUTILS_USTRTOSMALLINT$POINTER$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT$stub:
.indirect_symbol _VARUTILS_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOSHORTINT$POINTER$$SHORTINT$stub:
.indirect_symbol _VARUTILS_WSTRTOSHORTINT$POINTER$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOSHORTINT$POINTER$$SHORTINT$stub:
.indirect_symbol _VARUTILS_LSTRTOSHORTINT$POINTER$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOSHORTINT$POINTER$$SHORTINT$stub:
.indirect_symbol _VARUTILS_USTRTOSHORTINT$POINTER$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT$stub:
.indirect_symbol _VARUTILS_VARIANTTOLONGINT$TVARDATA$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOLONGINT$POINTER$$LONGINT$stub:
.indirect_symbol _VARUTILS_WSTRTOLONGINT$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOLONGINT$POINTER$$LONGINT$stub:
.indirect_symbol _VARUTILS_LSTRTOLONGINT$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOLONGINT$POINTER$$LONGINT$stub:
.indirect_symbol _VARUTILS_USTRTOLONGINT$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_uint_unicodestr$stub:
.indirect_symbol fpc_val_uint_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_uint_ansistr$stub:
.indirect_symbol fpc_val_uint_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD$stub:
.indirect_symbol _VARUTILS_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOCARDINAL$POINTER$$LONGWORD$stub:
.indirect_symbol _VARUTILS_WSTRTOCARDINAL$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOCARDINAL$POINTER$$LONGWORD$stub:
.indirect_symbol _VARUTILS_LSTRTOCARDINAL$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOCARDINAL$POINTER$$LONGWORD$stub:
.indirect_symbol _VARUTILS_USTRTOCARDINAL$POINTER$$LONGWORD
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

Lfpc_unicodestr_to_shortstr$stub:
.indirect_symbol fpc_unicodestr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_PREPAREFLOATSTR$SHORTSTRING$stub:
.indirect_symbol _VARUTILS_PREPAREFLOATSTR$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_real_shortstr$stub:
.indirect_symbol fpc_val_real_shortstr
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

L_VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE$stub:
.indirect_symbol _VARUTILS_VARIANTTOSINGLE$TVARDATA$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOSINGLE$POINTER$$SINGLE$stub:
.indirect_symbol _VARUTILS_WSTRTOSINGLE$POINTER$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOSINGLE$POINTER$$SINGLE$stub:
.indirect_symbol _VARUTILS_LSTRTOSINGLE$POINTER$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOSINGLE$POINTER$$SINGLE$stub:
.indirect_symbol _VARUTILS_USTRTOSINGLE$POINTER$$SINGLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE$stub:
.indirect_symbol _VARUTILS_VARIANTTODOUBLE$TVARDATA$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTODOUBLE$POINTER$$DOUBLE$stub:
.indirect_symbol _VARUTILS_WSTRTODOUBLE$POINTER$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTODOUBLE$POINTER$$DOUBLE$stub:
.indirect_symbol _VARUTILS_LSTRTODOUBLE$POINTER$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTODOUBLE$POINTER$$DOUBLE$stub:
.indirect_symbol _VARUTILS_USTRTODOUBLE$POINTER$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY$stub:
.indirect_symbol _VARUTILS_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOCURRENCY$POINTER$$CURRENCY$stub:
.indirect_symbol _VARUTILS_WSTRTOCURRENCY$POINTER$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOCURRENCY$POINTER$$CURRENCY$stub:
.indirect_symbol _VARUTILS_LSTRTOCURRENCY$POINTER$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOCURRENCY$POINTER$$CURRENCY$stub:
.indirect_symbol _VARUTILS_USTRTOCURRENCY$POINTER$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN
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

Lfpc_unicodestr_to_ansistr$stub:
.indirect_symbol fpc_unicodestr_to_ansistr
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

L_VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME$stub:
.indirect_symbol _VARUTILS_VARIANTTODATE$TVARDATA$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTODATE$POINTER$$TDATETIME$stub:
.indirect_symbol _VARUTILS_WSTRTODATE$POINTER$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTODATE$POINTER$$TDATETIME$stub:
.indirect_symbol _VARUTILS_LSTRTODATE$POINTER$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTODATE$POINTER$$TDATETIME$stub:
.indirect_symbol _VARUTILS_USTRTODATE$POINTER$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN$stub:
.indirect_symbol _VARUTILS_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOBOOLEAN$POINTER$$BOOLEAN$stub:
.indirect_symbol _VARUTILS_WSTRTOBOOLEAN$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOBOOLEAN$POINTER$$BOOLEAN$stub:
.indirect_symbol _VARUTILS_LSTRTOBOOLEAN$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOBOOLEAN$POINTER$$BOOLEAN$stub:
.indirect_symbol _VARUTILS_USTRTOBOOLEAN$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE$stub:
.indirect_symbol _VARUTILS_VARIANTTOBYTE$TVARDATA$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOBYTE$POINTER$$BYTE$stub:
.indirect_symbol _VARUTILS_WSTRTOBYTE$POINTER$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOBYTE$POINTER$$BYTE$stub:
.indirect_symbol _VARUTILS_LSTRTOBYTE$POINTER$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOBYTE$POINTER$$BYTE$stub:
.indirect_symbol _VARUTILS_USTRTOBYTE$POINTER$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_int64_unicodestr$stub:
.indirect_symbol fpc_val_int64_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_int64_ansistr$stub:
.indirect_symbol fpc_val_int64_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOINT64$TVARDATA$$INT64$stub:
.indirect_symbol _VARUTILS_VARIANTTOINT64$TVARDATA$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOINT64$POINTER$$INT64$stub:
.indirect_symbol _VARUTILS_WSTRTOINT64$POINTER$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOINT64$POINTER$$INT64$stub:
.indirect_symbol _VARUTILS_LSTRTOINT64$POINTER$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOINT64$POINTER$$INT64$stub:
.indirect_symbol _VARUTILS_USTRTOINT64$POINTER$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_qword_unicodestr$stub:
.indirect_symbol fpc_val_qword_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_qword_ansistr$stub:
.indirect_symbol fpc_val_qword_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD$stub:
.indirect_symbol _VARUTILS_VARIANTTOQWORD$TVARDATA$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_WSTRTOQWORD$POINTER$$QWORD$stub:
.indirect_symbol _VARUTILS_WSTRTOQWORD$POINTER$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_LSTRTOQWORD$POINTER$$QWORD$stub:
.indirect_symbol _VARUTILS_LSTRTOQWORD$POINTER$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_USTRTOQWORD$POINTER$$QWORD$stub:
.indirect_symbol _VARUTILS_USTRTOQWORD$POINTER$$QWORD
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

L_SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
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

L_SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING
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

L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _VARUTILS_VARDATETOSTRING$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING$stub:
.indirect_symbol _VARUTILS_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
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

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING$stub:
.indirect_symbol _VARUTILS_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
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

L_VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA$stub:
.indirect_symbol _VARUTILS_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
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

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_HEXSTR$POINTER$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_HEXSTR$POINTER$$SHORTSTRING
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

L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
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

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
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

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
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

Lfpc_write_text_float$stub:
.indirect_symbol fpc_write_text_float
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_currency$stub:
.indirect_symbol fpc_write_text_currency
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_unicodestr$stub:
.indirect_symbol fpc_write_text_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOHEX$QWORD$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOHEX$QWORD$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_boolean$stub:
.indirect_symbol fpc_write_text_boolean
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

Lfpc_write_text_uint$stub:
.indirect_symbol fpc_write_text_uint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_int64$stub:
.indirect_symbol fpc_write_text_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_qword$stub:
.indirect_symbol fpc_write_text_qword
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT
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

L_VARUTILS_SAFEARRAYDESTROY$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYDESTROY$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INTF_DECR_REF$stub:
.indirect_symbol FPC_INTF_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTINIT$TVARDATA$stub:
.indirect_symbol _VARUTILS_VARIANTINIT$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT$stub:
.indirect_symbol _VARUTILS_VARIANTCLEAR$TVARDATA$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT
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

L_VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR$stub:
.indirect_symbol _VARUTILS_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INTF_INCR_REF$stub:
.indirect_symbol FPC_INTF_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT$stub:
.indirect_symbol _VARUTILS_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_variant_copy$stub:
.indirect_symbol fpc_variant_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT$stub:
.indirect_symbol _VARUTILS_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_MAKEWIDESTRING$PWIDECHAR$WIDESTRING$stub:
.indirect_symbol _VARUTILS_MAKEWIDESTRING$PWIDECHAR$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
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

L_VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_CHECKVARARRAY$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER$stub:
.indirect_symbol _VARUTILS_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYLOCK$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYELEMENTTOTAL$PVARARRAY$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE$stub:
.indirect_symbol _VARUTILS_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT$stub:
.indirect_symbol _VARUTILS_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_GETMEM$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT
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

L_VARUTILS_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT$stub:
.indirect_symbol _VARUTILS_SETUNLOCKRESULT$PVARARRAY$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT$stub:
.indirect_symbol _VARUTILS_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT$stub:
.indirect_symbol _VARUTILS_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT
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
.globl	_INIT_VARUTILS_TVARTYPETOELEMENTINFO
_INIT_VARUTILS_TVARTYPETOELEMENTINFO:
	.byte	13,21
	.ascii	"TVarTypeToElementInfo"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_VARUTILS_TVARTYPETOELEMENTINFO
_RTTI_VARUTILS_TVARTYPETOELEMENTINFO:
	.byte	13,21
	.ascii	"TVarTypeToElementInfo"
	.long	12,4
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	1
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	8
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
L_VMT_SYSUTILS_EVARIANTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EVARIANTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EOUTOFMEMORY$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EOUTOFMEMORY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld1$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld2$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld3$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld4$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld5$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld6$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld7$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_MAXCURRENCY$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_MAXCURRENCY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_MINCURRENCY$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_MINCURRENCY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld8$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld9$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld10$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld11$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld12$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_MINDATETIME$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_MINDATETIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_MAXDATETIME$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_MAXDATETIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_OUTPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_OUTPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld13$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld14$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld15$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld16$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld17$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld18$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld19$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld20$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARUTILS_VARTYPESTRINGS$non_lazy_ptr:
.indirect_symbol _TC_VARUTILS_VARTYPESTRINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld21$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld22$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld23$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld24$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld25$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld26$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld27$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld28$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld29$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld30$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld30
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld31$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$VARUTILS$_Ld32$non_lazy_ptr:
.indirect_symbol _$VARUTILS$_Ld32
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARUTILS_PSAELEMENTFLAGS$non_lazy_ptr:
.indirect_symbol _TC_VARUTILS_PSAELEMENTFLAGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_VARUTILS_PSAELEMENTSIZES$non_lazy_ptr:
.indirect_symbol _TC_VARUTILS_PSAELEMENTSIZES
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

