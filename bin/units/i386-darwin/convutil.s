# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CONVUTILS_CONVFAMILYTODESCRIPTION$TCONVFAMILY$$ANSISTRING
_CONVUTILS_CONVFAMILYTODESCRIPTION$TCONVFAMILY$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj4
Lj4:
	popl	-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%edx
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	-4(%ebp),%eax
	jg	Lj7
	jmp	Lj8
Lj7:
	movl	-12(%ebp),%edx
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%esi
	movl	-4(%ebp),%edi
	movl	(%esi,%edi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%esi,%edi,4),%eax
	movl	%eax,(%ebx)
Lj8:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_GETCONVFAMILIES$TCONVFAMILYARRAY
_CONVUTILS_GETCONVFAMILIES$TCONVFAMILYARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj14
Lj14:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj14(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_TCONVFAMILYARRAY$non_lazy_ptr-Lj14(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj14(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj28
	decl	-8(%ebp)
	.align 2
Lj29:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	%esi,(%edx,%ecx,4)
	cmpl	-8(%ebp),%eax
	jg	Lj29
Lj28:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_GETCONVTYPES$TCONVFAMILY$TCONVTYPEARRAY
_CONVUTILS_GETCONVTYPES$TCONVFAMILY$TCONVTYPEARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj35
Lj35:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-20(%ebp)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj35(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj39
	decl	-12(%ebp)
	.align 2
Lj40:
	incl	-12(%ebp)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj35(%ebx),%edx
	movl	(%edx),%ecx
	movl	-12(%ebp),%edx
	shll	$4,%edx
	movl	12(%ecx,%edx),%edx
	cmpl	-4(%ebp),%edx
	je	Lj43
	jmp	Lj44
Lj43:
	incl	-20(%ebp)
Lj44:
	cmpl	-12(%ebp),%eax
	jg	Lj40
Lj39:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_TCONVTYPEARRAY$non_lazy_ptr-Lj35(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-16(%ebp)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj35(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj58
	decl	-12(%ebp)
	.align 2
Lj59:
	incl	-12(%ebp)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj35(%ebx),%edx
	movl	(%edx),%ecx
	movl	-12(%ebp),%edx
	shll	$4,%edx
	movl	12(%ecx,%edx),%edx
	cmpl	-4(%ebp),%edx
	je	Lj62
	jmp	Lj63
Lj62:
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%esi
	movl	%esi,(%edx,%ecx,4)
	incl	-16(%ebp)
Lj63:
	cmpl	-12(%ebp),%eax
	jg	Lj59
Lj58:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_CONVTYPETODESCRIPTION$TCONVTYPE$$ANSISTRING
_CONVUTILS_CONVTYPETODESCRIPTION$TCONVTYPE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj67
Lj67:
	popl	-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%edx
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj67(%edx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	-4(%ebp),%eax
	jg	Lj70
	jmp	Lj71
Lj70:
	movl	-12(%ebp),%edx
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj67(%edx),%eax
	movl	(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,%edi
	shll	$4,%edi
	movl	(%ebx,%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%ebx,%edi),%eax
	movl	%eax,(%esi)
Lj71:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY
_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj77
Lj77:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj77(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj82
	jmp	Lj83
Lj82:
	movl	$1,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_DEF36$non_lazy_ptr-Lj77(%ebx),%edx
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj77(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj77(%ebx),%eax
	movl	(%eax),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esi)
	movl	$0,-8(%ebp)
	jmp	Lj98
Lj83:
	movl	$0,-12(%ebp)
	jmp	Lj102
	.align 2
Lj101:
	incl	-12(%ebp)
Lj102:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj104
	jmp	Lj103
Lj104:
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj77(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj101
	jmp	Lj103
Lj103:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	je	Lj109
	jmp	Lj110
Lj109:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_DEF36$non_lazy_ptr-Lj77(%ebx),%edx
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj77(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj77(%ebx),%eax
	movl	(%eax),%edi
	movl	-16(%ebp),%esi
	leal	(%edi,%esi,4),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%edi,%esi,4)
Lj110:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj98:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_CHECKFAMILY$TCONVFAMILY$$BOOLEAN
_CONVUTILS_CHECKFAMILY$TCONVFAMILY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj126
Lj126:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj126(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	-4(%ebp),%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE
_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj132
Lj132:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_CONVUTILS_CHECKFAMILY$TCONVFAMILY$$BOOLEAN$stub
	testb	%al,%al
	je	Lj133
	jmp	Lj134
Lj133:
	movl	$-1,-12(%ebp)
	jmp	Lj131
Lj134:
	fld1
	fldl	8(%ebp)
	faddp	%st,%st(1)
	movl	L_$CONVUTILS$_Ld1$non_lazy_ptr-Lj132(%ebx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj139
	jmp	Lj140
Lj139:
	movl	$-1,-12(%ebp)
	jmp	Lj131
Lj140:
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj132(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_DEF35$non_lazy_ptr-Lj132(%ebx),%edx
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj132(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj132(%ebx),%eax
	movl	(%eax),%edi
	movl	-16(%ebp),%esi
	shll	$4,%esi
	leal	(%edi,%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%edi,%esi)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj132(%ebx),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	8(%ebp),%edx
	movl	%edx,4(%ecx,%eax)
	movl	12(%ebp),%edx
	movl	%edx,8(%ecx,%eax)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj132(%ebx),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%ecx,%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj131:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj166
Lj166:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj166(%esi),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jge	Lj171
	jmp	Lj172
Lj171:
	movb	$0,-9(%ebp)
	jmp	Lj165
Lj172:
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj166(%esi),%ecx
	movl	-8(%ebp),%eax
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj166(%esi),%edx
	movl	(%edx),%ebx
	movl	-4(%ebp),%edx
	shll	$4,%edx
	leal	(%ebx,%edx),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	Lfpc_copy_proc$stub
	movb	$1,-9(%ebp)
Lj165:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$$DOUBLE
_CONVUTILS_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj184
Lj184:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj184(%ebx),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj184(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj185
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj188
	jmp	Lj189
Lj188:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj184(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj184(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj185
Lj189:
	leal	-48(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj196
	jmp	Lj197
Lj196:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj184(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj184(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj185
Lj197:
	movl	-20(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jne	Lj204
	jmp	Lj205
Lj204:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj184(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj184(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj185
Lj205:
	fldl	-28(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fldl	-44(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-16(%ebp)
Lj185:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj184(%ebx),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj184(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj186
	call	LFPC_RERAISE$stub
Lj186:
	fldl	-16(%ebp)
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$TCONVTYPE$TCONVTYPE$$DOUBLE
_CONVUTILS_CONVERT$DOUBLE$TCONVTYPE$TCONVTYPE$TCONVTYPE$TCONVTYPE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	call	Lj227
Lj227:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-36(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-68(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-84(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-124(%ebp)
	testl	%eax,%eax
	jne	Lj228
	leal	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj231
	jmp	Lj232
Lj231:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj228
Lj232:
	leal	-68(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj239
	jmp	Lj240
Lj239:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj228
Lj240:
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj247
	jmp	Lj248
Lj247:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj228
Lj248:
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj255
	jmp	Lj256
Lj255:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj228
Lj256:
	movl	-24(%ebp),%eax
	cmpl	-56(%ebp),%eax
	jne	Lj263
	jmp	Lj265
Lj265:
	movl	-24(%ebp),%eax
	cmpl	-56(%ebp),%eax
	jne	Lj263
	jmp	Lj264
Lj263:
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CONVUTILS$_Ld2$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj228
Lj264:
	fldl	-48(%ebp)
	fldl	-32(%ebp)
	fdivp	%st,%st(1)
	fldl	12(%ebp)
	fmulp	%st,%st(1)
	fldl	-80(%ebp)
	fldl	-64(%ebp)
	fdivp	%st,%st(1)
	fdivrp	%st,%st(1)
	fstpl	-20(%ebp)
Lj228:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-36(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-68(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr-Lj227(%ebx),%edx
	leal	-84(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-124(%ebp),%eax
	testl	%eax,%eax
	je	Lj229
	call	LFPC_RERAISE$stub
Lj229:
	fldl	-20(%ebp)
	movl	-128(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEINFO_$__CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
_CONVUTILS_TCONVTYPEINFO_$__CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj304
	jmp	Lj305
Lj304:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj305:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj310
	jmp	Lj311
Lj310:
	jmp	Lj302
Lj311:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj314
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj318
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
Lj318:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj319
	call	LFPC_RERAISE$stub
Lj319:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj327
	jmp	Lj326
Lj327:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj325
	jmp	Lj326
Lj325:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj326:
Lj314:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj316
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj331
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj332
	jmp	Lj333
Lj332:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj333:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj331:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj330
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj330:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj316
Lj316:
Lj302:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEFACTOR_$__CREATE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPEFACTOR
_CONVUTILS_TCONVTYPEFACTOR_$__CREATE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPEFACTOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj340
	jmp	Lj341
Lj340:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj341:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj346
	jmp	Lj347
Lj346:
	jmp	Lj338
Lj347:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj350
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj354
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CONVUTILS_TCONVTYPEINFO_$__CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,16(%edx)
	movl	12(%ebp),%eax
	movl	%eax,20(%edx)
Lj354:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj355
	call	LFPC_RERAISE$stub
Lj355:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj369
	jmp	Lj368
Lj369:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj367
	jmp	Lj368
Lj367:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj368:
Lj350:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj352
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj373
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj374
	jmp	Lj375
Lj374:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj375:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj373:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj372
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj372:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj352
Lj352:
Lj338:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEFACTOR_$__TOCOMMON$DOUBLE$$DOUBLE
_CONVUTILS_TCONVTYPEFACTOR_$__TOCOMMON$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEFACTOR_$__FROMCOMMON$DOUBLE$$DOUBLE
_CONVUTILS_TCONVTYPEFACTOR_$__FROMCOMMON$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	16(%eax)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEPROCS_$__CREATE$crcF3BD61DE
_CONVUTILS_TCONVTYPEPROCS_$__CREATE$crcF3BD61DE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj390
	jmp	Lj391
Lj390:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj391:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj396
	jmp	Lj397
Lj396:
	jmp	Lj388
Lj397:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj400
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj404
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CONVUTILS_TCONVTYPEINFO_$__CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO$stub
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
Lj404:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj405
	call	LFPC_RERAISE$stub
Lj405:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj421
	jmp	Lj420
Lj421:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj419
	jmp	Lj420
Lj419:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj420:
Lj400:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj402
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj425
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj426
	jmp	Lj427
Lj426:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj427:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj425:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj424
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj424:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj402
Lj402:
Lj388:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEPROCS_$__TOCOMMON$DOUBLE$$DOUBLE
_CONVUTILS_TCONVTYPEPROCS_$__TOCOMMON$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	*%eax
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CONVUTILS_TCONVTYPEPROCS_$__FROMCOMMON$DOUBLE$$DOUBLE
_CONVUTILS_TCONVTYPEPROCS_$__FROMCOMMON$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	*%eax
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_INIT$_CONVUTILS
_INIT$_CONVUTILS:
.reference __CONVUTILS_init_implicit
.globl	__CONVUTILS_init_implicit
__CONVUTILS_init_implicit:
.reference _INIT$_CONVUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_CONVUTILS
_FINALIZE$_CONVUTILS:
.reference __CONVUTILS_finalize
.globl	__CONVUTILS_finalize
__CONVUTILS_finalize:
.reference _FINALIZE$_CONVUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj447
Lj447:
	popl	%ebx
	movl	$0,-4(%ebp)
	leal	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_DEF35$non_lazy_ptr-Lj447(%ebx),%edx
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj447(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-4(%ebp)
	leal	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_CONVUTILS_DEF36$non_lazy_ptr-Lj447(%ebx),%edx
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj447(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_INIT_CONVUTILS_DEF35$non_lazy_ptr-Lj447(%ebx),%edx
	movl	L_TC_CONVUTILS_THEUNITS$non_lazy_ptr-Lj447(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_CONVUTILS_DEF36$non_lazy_ptr-Lj447(%ebx),%edx
	movl	L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr-Lj447(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-8(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$CONVUTILS$_Ld3
_$CONVUTILS$_Ld3:
	.byte	13
	.ascii	"TConvTypeInfo"

.const_data
	.align 2
.globl	_VMT_CONVUTILS_TCONVTYPEINFO
_VMT_CONVUTILS_TCONVTYPEINFO:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CONVUTILS$_Ld3
	.long	0,0
	.long	_$CONVUTILS$_Ld4
	.long	_RTTI_CONVUTILS_TCONVTYPEINFO
	.long	_INIT_CONVUTILS_TCONVTYPEINFO
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$CONVUTILS$_Ld6
_$CONVUTILS$_Ld6:
	.byte	15
	.ascii	"TConvTypeFactor"

.const_data
	.align 2
.globl	_VMT_CONVUTILS_TCONVTYPEFACTOR
_VMT_CONVUTILS_TCONVTYPEFACTOR:
	.long	24,-24
	.long	_VMT_CONVUTILS_TCONVTYPEINFO
	.long	_$CONVUTILS$_Ld6
	.long	0,0
	.long	_$CONVUTILS$_Ld7
	.long	_RTTI_CONVUTILS_TCONVTYPEFACTOR
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
	.long	_CONVUTILS_TCONVTYPEFACTOR_$__TOCOMMON$DOUBLE$$DOUBLE
	.long	_CONVUTILS_TCONVTYPEFACTOR_$__FROMCOMMON$DOUBLE$$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$CONVUTILS$_Ld9
_$CONVUTILS$_Ld9:
	.byte	14
	.ascii	"TConvTypeProcs"

.const_data
	.align 2
.globl	_VMT_CONVUTILS_TCONVTYPEPROCS
_VMT_CONVUTILS_TCONVTYPEPROCS:
	.long	24,-24
	.long	_VMT_CONVUTILS_TCONVTYPEINFO
	.long	_$CONVUTILS$_Ld9
	.long	0,0
	.long	_$CONVUTILS$_Ld10
	.long	_RTTI_CONVUTILS_TCONVTYPEPROCS
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
	.long	_CONVUTILS_TCONVTYPEPROCS_$__TOCOMMON$DOUBLE$$DOUBLE
	.long	_CONVUTILS_TCONVTYPEPROCS_$__FROMCOMMON$DOUBLE$$DOUBLE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_CONVUTILS
_THREADVARLIST_CONVUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_CONVUTILS_THEUNITS
_TC_CONVUTILS_THEUNITS:
	.long	0

.data
	.align 2
.globl	_TC_CONVUTILS_THEFAMILIES
_TC_CONVUTILS_THEFAMILIES:
	.long	0

.const
	.align 3
.globl	_$CONVUTILS$_Ld1
_$CONVUTILS$_Ld1:
	.byte	151,165,180,54,65,95,112,137,225,63

.const
	.align 2
.globl	_$CONVUTILS$_Ld2
_$CONVUTILS$_Ld2:
	.byte	0,0,0,0,0,0,240,191
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
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

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
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

L_CONVUTILS_CHECKFAMILY$TCONVFAMILY$$BOOLEAN$stub:
.indirect_symbol _CONVUTILS_CHECKFAMILY$TCONVFAMILY$$BOOLEAN
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

L_CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN$stub:
.indirect_symbol _CONVUTILS_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
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

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
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

L_CONVUTILS_TCONVTYPEINFO_$__CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO$stub:
.indirect_symbol _CONVUTILS_TCONVTYPEINFO_$__CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
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
.globl	_INIT_CONVUTILS_TCONVTYPE
_INIT_CONVUTILS_TCONVTYPE:
	.byte	1,9
	.ascii	"TConvType"
	.byte	4
	.long	-2147483648,2147483647

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVTYPE
_RTTI_CONVUTILS_TCONVTYPE:
	.byte	1,9
	.ascii	"TConvType"
	.byte	4
	.long	-2147483648,2147483647

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVFAMILY
_INIT_CONVUTILS_TCONVFAMILY:
	.byte	1,11
	.ascii	"TConvFamily"
	.byte	4
	.long	-2147483648,2147483647

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVFAMILY
_RTTI_CONVUTILS_TCONVFAMILY:
	.byte	1,11
	.ascii	"TConvFamily"
	.byte	4
	.long	-2147483648,2147483647

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVFAMILYARRAY
_INIT_CONVUTILS_TCONVFAMILYARRAY:
	.byte	21
	.ascii	"\020TConvFamilyArray"
	.long	4
	.long	_INIT_CONVUTILS_TCONVFAMILY
	.long	3,0
	.byte	9
	.ascii	"convutils"

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVFAMILYARRAY
_RTTI_CONVUTILS_TCONVFAMILYARRAY:
	.byte	21
	.ascii	"\020TConvFamilyArray"
	.long	4
	.long	_RTTI_CONVUTILS_TCONVFAMILY
	.long	3,0
	.byte	9
	.ascii	"convutils"

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVTYPEARRAY
_INIT_CONVUTILS_TCONVTYPEARRAY:
	.byte	21
	.ascii	"\016TConvTypeArray"
	.long	4
	.long	_INIT_CONVUTILS_TCONVTYPE
	.long	3,0
	.byte	9
	.ascii	"convutils"

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVTYPEARRAY
_RTTI_CONVUTILS_TCONVTYPEARRAY:
	.byte	21
	.ascii	"\016TConvTypeArray"
	.long	4
	.long	_RTTI_CONVUTILS_TCONVTYPE
	.long	3,0
	.byte	9
	.ascii	"convutils"

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVERSIONPROC
_INIT_CONVUTILS_TCONVERSIONPROC:
	.byte	23,15
	.ascii	"TConversionProc"

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVERSIONPROC
_RTTI_CONVUTILS_TCONVERSIONPROC:
	.byte	23,15
	.ascii	"TConversionProc"

.const_data
	.align 2
.globl	_$CONVUTILS$_Ld4
_$CONVUTILS$_Ld4:
	.short	0
	.long	_$CONVUTILS$_Ld5
	.align 2
.globl	_$CONVUTILS$_Ld5
_$CONVUTILS$_Ld5:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVTYPEINFO
_INIT_CONVUTILS_TCONVTYPEINFO:
	.byte	15,13
	.ascii	"TConvTypeInfo"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVTYPEINFO
_RTTI_CONVUTILS_TCONVTYPEINFO:
	.byte	15,13
	.ascii	"TConvTypeInfo"
	.long	_VMT_CONVUTILS_TCONVTYPEINFO
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"convutils"
	.short	0

.const_data
	.align 2
.globl	_$CONVUTILS$_Ld7
_$CONVUTILS$_Ld7:
	.short	0
	.long	_$CONVUTILS$_Ld8
	.align 2
.globl	_$CONVUTILS$_Ld8
_$CONVUTILS$_Ld8:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVTYPEFACTOR
_INIT_CONVUTILS_TCONVTYPEFACTOR:
	.byte	15,15
	.ascii	"TConvTypeFactor"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVTYPEFACTOR
_RTTI_CONVUTILS_TCONVTYPEFACTOR:
	.byte	15,15
	.ascii	"TConvTypeFactor"
	.long	_VMT_CONVUTILS_TCONVTYPEFACTOR
	.long	_RTTI_CONVUTILS_TCONVTYPEINFO
	.short	0
	.byte	9
	.ascii	"convutils"
	.short	0

.const_data
	.align 2
.globl	_$CONVUTILS$_Ld10
_$CONVUTILS$_Ld10:
	.short	0
	.long	_$CONVUTILS$_Ld11
	.align 2
.globl	_$CONVUTILS$_Ld11
_$CONVUTILS$_Ld11:
	.short	0

.const_data
	.align 2
.globl	_INIT_CONVUTILS_TCONVTYPEPROCS
_INIT_CONVUTILS_TCONVTYPEPROCS:
	.byte	15,14
	.ascii	"TConvTypeProcs"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CONVUTILS_TCONVTYPEPROCS
_RTTI_CONVUTILS_TCONVTYPEPROCS:
	.byte	15,14
	.ascii	"TConvTypeProcs"
	.long	_VMT_CONVUTILS_TCONVTYPEPROCS
	.long	_RTTI_CONVUTILS_TCONVTYPEINFO
	.short	0
	.byte	9
	.ascii	"convutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_CONVUTILS_RESOURCEDATA
_INIT_CONVUTILS_RESOURCEDATA:
	.byte	13,12
	.ascii	"ResourceData"
	.long	16,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_INIT_CONVUTILS_DEF35
_INIT_CONVUTILS_DEF35:
	.byte	21
	.ascii	"\000"
	.long	16
	.long	_INIT_CONVUTILS_RESOURCEDATA
	.long	-1
	.long	_INIT_CONVUTILS_RESOURCEDATA
	.byte	9
	.ascii	"convutils"

.const_data
	.align 2
.globl	_INIT_CONVUTILS_DEF36
_INIT_CONVUTILS_DEF36:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
	.long	_INIT_SYSTEM_ANSISTRING
	.byte	9
	.ascii	"convutils"
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
L_TC_CONVUTILS_THEFAMILIES$non_lazy_ptr:
.indirect_symbol _TC_CONVUTILS_THEFAMILIES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONVUTILS_TCONVFAMILYARRAY$non_lazy_ptr:
.indirect_symbol _INIT_CONVUTILS_TCONVFAMILYARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CONVUTILS_THEUNITS$non_lazy_ptr:
.indirect_symbol _TC_CONVUTILS_THEUNITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONVUTILS_TCONVTYPEARRAY$non_lazy_ptr:
.indirect_symbol _INIT_CONVUTILS_TCONVTYPEARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONVUTILS_DEF36$non_lazy_ptr:
.indirect_symbol _INIT_CONVUTILS_DEF36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONVUTILS$_Ld1$non_lazy_ptr:
.indirect_symbol _$CONVUTILS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONVUTILS_DEF35$non_lazy_ptr:
.indirect_symbol _INIT_CONVUTILS_DEF35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_CONVUTILS_RESOURCEDATA$non_lazy_ptr:
.indirect_symbol _INIT_CONVUTILS_RESOURCEDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CONVUTILS$_Ld2$non_lazy_ptr:
.indirect_symbol _$CONVUTILS$_Ld2
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

