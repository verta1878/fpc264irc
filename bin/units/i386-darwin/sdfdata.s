# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__CREATE$TCOMPONENT$$TFIXEDFORMATDATASET
_SDFDATA_TFIXEDFORMATDATASET_$__CREATE$TCOMPONENT$$TFIXEDFORMATDATASET:
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
	movl	-12(%ebp),%eax
	movl	$250,396(%eax)
	movl	-12(%ebp),%eax
	movb	$1,360(%eax)
	movl	-12(%ebp),%eax
	movb	$0,362(%eax)
	movl	-12(%ebp),%eax
	movl	$0,376(%eax)
	movl	-12(%ebp),%eax
	movb	$1,363(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,348(%edx)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,364(%edx)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj52
	jmp	Lj51
Lj52:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj51
Lj50:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj51:
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
	jne	Lj56
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj58
Lj57:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj58:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj56:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj55
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj55:
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
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__DESTROY
_SDFDATA_TFIXEDFORMATDATASET_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj65
	jmp	Lj66
Lj65:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj66:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__DESTROY$stub
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj79
	jmp	Lj78
Lj79:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj77
	jmp	Lj78
Lj77:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj78:
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETSCHEMA$TSTRINGLIST
_SDFDATA_TFIXEDFORMATDATASET_$__SETSCHEMA$TSTRINGLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	348(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETFILEMUSTEXIST$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__SETFILEMUSTEXIST$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,360(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETTRIMSPACE$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__SETTRIMSPACE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,363(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETREADONLY$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__SETREADONLY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,361(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETFILENAME$ANSISTRING
_SDFDATA_TFIXEDFORMATDATASET_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj110
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	352(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,352(%ebx)
Lj110:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj111
	call	LFPC_RERAISE$stub
Lj111:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITFIELDDEFS
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	call	Lj118
Lj118:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj119
	movl	-4(%ebp),%eax
	cmpl	$0,364(%eax)
	jne	Lj123
	jmp	Lj122
Lj122:
	jmp	Lj119
Lj123:
	movl	-4(%ebp),%eax
	movl	$0,376(%eax)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj131
	incl	-8(%ebp)
	.align 2
Lj132:
	decl	-8(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	364(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj143
	movl	-4(%eax),%eax
Lj143:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj144
	jmp	Lj145
Lj144:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj145:
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	364(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	cmpl	$0,-8(%ebp)
	jg	Lj132
Lj131:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj154
	jmp	Lj155
Lj154:
	movl	-4(%ebp),%eax
	movl	396(%eax),%eax
	movl	%eax,-16(%ebp)
Lj155:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj118(%esi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-20(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj164
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__LOADFIELDSCHEME$TSTRINGS$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj175
	decl	-8(%ebp)
	.align 2
Lj176:
	incl	-8(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	leal	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__GETVALUE$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	-16(%ebp),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movb	$0,(%esp)
	movw	-12(%ebp),%ax
	movw	%ax,4(%esp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	leal	-108(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	$1,%ecx
	call	L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,376(%edx)
	cmpl	-8(%ebp),%ebx
	jg	Lj176
Lj175:
Lj164:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj165
	decl	%eax
	testl	%eax,%eax
	je	Lj166
Lj166:
	call	LFPC_RERAISE$stub
Lj165:
Lj119:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj120
	call	LFPC_RERAISE$stub
Lj120:
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALOPEN
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALOPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj220
Lj220:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,368(%eax)
	movl	-4(%ebp),%eax
	movb	$0,392(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,364(%eax)
	jne	Lj226
	jmp	Lj225
Lj225:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj220(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,364(%edx)
Lj226:
	movl	-4(%ebp),%eax
	movb	360(%eax),%al
	testb	%al,%al
	je	Lj235
	jmp	Lj234
Lj235:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj233
	jmp	Lj234
Lj233:
	movw	$65280,(%esp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj220(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj234:
	movl	-4(%ebp),%eax
	movb	362(%eax),%al
	testb	%al,%al
	je	Lj250
	jmp	Lj251
Lj250:
	movl	-4(%ebp),%eax
	movl	352(%eax),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*216(%ecx)
Lj251:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	396(%eax),%eax
	movl	%eax,376(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*568(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj260
	jmp	Lj261
Lj260:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
Lj261:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	testl	%eax,%eax
	je	Lj268
	jmp	Lj269
Lj268:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	396(%eax),%eax
	movl	%eax,376(%edx)
Lj269:
	movl	-4(%ebp),%eax
	movl	$4,216(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	376(%eax),%ecx
	movl	232(%edx),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,384(%eax)
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	addl	$8,%eax
	movl	-4(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%eax),%ecx
	movl	216(%edx),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,372(%eax)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,380(%edx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALCLOSE
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALCLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	361(%eax),%al
	testb	%al,%al
	je	Lj288
	jmp	Lj287
Lj288:
	movl	-4(%ebp),%eax
	cmpb	$0,392(%eax)
	jne	Lj286
	jmp	Lj287
Lj286:
	movl	-4(%ebp),%eax
	movl	352(%eax),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
Lj287:
	movl	-4(%ebp),%eax
	movb	$0,362(%eax)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj301
	jmp	Lj302
Lj301:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*264(%edx)
Lj302:
	movl	-4(%ebp),%eax
	movl	$-1,368(%eax)
	movl	-4(%ebp),%eax
	movl	$0,380(%eax)
	movl	-4(%ebp),%eax
	movl	$0,376(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__ISCURSOROPEN$$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__ISCURSOROPEN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,364(%eax)
	jne	Lj315
	jmp	Lj314
Lj315:
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	cmpl	$0,%eax
	jg	Lj313
	jmp	Lj314
Lj313:
	movb	$1,-5(%ebp)
	jmp	Lj316
Lj314:
	movb	$0,-5(%ebp)
Lj316:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALHANDLEEXCEPTION
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALHANDLEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__INTERNALHANDLEEXCEPTION$stub
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__LOADFROMSTREAM$TSTREAM
_SDFDATA_TFIXEDFORMATDATASET_$__LOADFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj322
Lj322:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj323
	jmp	Lj324
Lj323:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*440(%ecx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movb	$1,362(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,364(%eax)
	jne	Lj336
	jmp	Lj335
Lj335:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj322(%ebx),%edx
	movl	L_$SDFDATA$_Ld1$non_lazy_ptr-Lj322(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj322(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj336:
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	-8(%ebp),%eax
	movb	$1,%dl
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*440(%ecx)
	jmp	Lj351
Lj324:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj322(%ebx),%edx
	movl	L_$SDFDATA$_Ld3$non_lazy_ptr-Lj322(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj322(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj351:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SAVETOSTREAM$TSTREAM
_SDFDATA_TFIXEDFORMATDATASET_$__SAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj359
Lj359:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj360
	jmp	Lj361
Lj360:
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*232(%ecx)
	jmp	Lj366
Lj361:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj359(%ebx),%edx
	movl	L_$SDFDATA$_Ld5$non_lazy_ptr-Lj359(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj359(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj366:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__ALLOCRECORDBUFFER$$PCHAR
_SDFDATA_TFIXEDFORMATDATASET_$__ALLOCRECORDBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	cmpl	$0,%eax
	jg	Lj375
	jmp	Lj376
Lj375:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	jmp	Lj381
Lj376:
	movl	$0,-8(%ebp)
Lj381:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__FREERECORDBUFFER$PCHAR
_SDFDATA_TFIXEDFORMATDATASET_$__FREERECORDBUFFER$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj386
	jmp	Lj387
Lj386:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj387:
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITRECORD$PCHAR
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	376(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__CLEARCALCFIELDS$PCHAR
_SDFDATA_TFIXEDFORMATDATASET_$__CLEARCALCFIELDS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	leal	(%ebx,%eax,1),%eax
	movl	-8(%ebp),%edx
	movl	232(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj409
Lj409:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	movl	-12(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-12(%ebp),%edx
	movl	400(%edx),%edx
	incl	%edx
	cmpl	%edx,%eax
	jl	Lj410
	jmp	Lj411
Lj410:
	movl	$2,-16(%ebp)
	jmp	Lj416
Lj411:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__TXTGETRECORD$PCHAR$TGETMODE$$TGETRESULT$stub
	movl	%eax,-16(%ebp)
Lj416:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj425
	jmp	Lj426
Lj425:
	movl	-12(%ebp),%eax
	movl	232(%eax),%eax
	cmpl	$0,%eax
	jg	Lj427
	jmp	Lj428
Lj427:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*360(%ecx)
Lj428:
	movl	-12(%ebp),%eax
	movl	384(%eax),%esi
	movl	-4(%ebp),%eax
	addl	%eax,%esi
	movl	$0,4(%esi)
	movl	-12(%ebp),%eax
	movl	368(%eax),%edx
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,(%esi)
	jmp	Lj443
Lj426:
	movl	-16(%ebp),%eax
	cmpl	$3,%eax
	je	Lj446
	jmp	Lj445
Lj446:
	cmpb	$0,8(%ebp)
	jne	Lj444
	jmp	Lj445
Lj444:
	movl	L_$SDFDATA$_Ld7$non_lazy_ptr-Lj409(%ebx),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj445:
Lj443:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDCOUNT$$LONGINT
_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECNO$$LONGINT
_SDFDATA_TFIXEDFORMATDATASET_$__GETRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$-1,-8(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj459
	jmp	Lj460
Lj459:
	movl	-4(%ebp),%eax
	movl	384(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-8(%ebp)
Lj460:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETRECNO$LONGINT
_SDFDATA_TFIXEDFORMATDATASET_$__SETRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj474
	jmp	Lj472
Lj474:
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-8(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	-4(%ebp),%eax
	jg	Lj473
	jmp	Lj472
Lj473:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*400(%edx)
	cmpl	-4(%ebp),%eax
	jne	Lj471
	jmp	Lj472
Lj471:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*332(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	decl	%eax
	movl	%eax,368(%edx)
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*296(%edx)
Lj472:
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDSIZE$$WORD
_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDSIZE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	376(%eax),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$1,%eax
	jb	Lj496
	decl	%eax
	je	Lj497
	decl	%eax
	jb	Lj496
	subl	$1,%eax
	jbe	Lj498
	subl	$2,%eax
	je	Lj499
	decl	%eax
	je	Lj500
	jmp	Lj496
Lj497:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj501
	jmp	Lj502
Lj501:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj507
Lj502:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
Lj507:
	jmp	Lj495
Lj498:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj495
Lj499:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	228(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj495
Lj500:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	356(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj495
Lj496:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj495:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__TXTGETRECORD$PCHAR$TGETMODE$$TGETRESULT
_SDFDATA_TFIXEDFORMATDATASET_$__TXTGETRECORD$PCHAR$TGETMODE$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj525
Lj525:
	popl	%esi
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
	jne	Lj526
	movl	$0,-16(%ebp)
	.align 2
Lj531:
	movb	$1,-17(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj540
	decl	%eax
	je	Lj538
	decl	%eax
	je	Lj539
	jmp	Lj537
Lj538:
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*396(%edx)
	decl	%eax
	cmpl	368(%ebx),%eax
	jle	Lj541
	jmp	Lj542
Lj541:
	movl	$2,-16(%ebp)
	jmp	Lj547
Lj542:
	movl	-12(%ebp),%eax
	incl	368(%eax)
Lj547:
	jmp	Lj536
Lj539:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	368(%eax),%eax
	cmpl	400(%edx),%eax
	jle	Lj548
	jmp	Lj549
Lj548:
	movl	$1,-16(%ebp)
	jmp	Lj552
Lj549:
	movl	-12(%ebp),%eax
	decl	368(%eax)
Lj552:
	jmp	Lj536
Lj540:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	368(%eax),%eax
	cmpl	400(%edx),%eax
	jl	Lj553
	jmp	Lj555
Lj555:
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*396(%edx)
	cmpl	368(%ebx),%eax
	jle	Lj553
	jmp	Lj554
Lj553:
	movl	$3,-16(%ebp)
Lj554:
	jmp	Lj536
Lj537:
Lj536:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj560
	jmp	Lj561
Lj560:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-12(%ebp),%eax
	movl	368(%eax),%edx
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	leal	-68(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	364(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-68(%ebp),%edx
	leal	-64(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*756(%ebx)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	jne	Lj576
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj525(%esi),%edx
	movl	%edx,%eax
Lj576:
	movl	-12(%ebp),%edx
	movl	376(%edx),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj581
	jmp	Lj582
Lj581:
	movl	-12(%ebp),%eax
	movl	368(%eax),%ecx
	incl	%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__RECORDFILTER$POINTER$LONGINT$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj593
	jmp	Lj592
Lj593:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj591
	jmp	Lj592
Lj591:
	movl	-12(%ebp),%eax
	incl	368(%eax)
Lj592:
Lj582:
Lj561:
	cmpb	$0,-17(%ebp)
	jne	Lj533
	jmp	Lj531
Lj533:
Lj526:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj527
	call	LFPC_RERAISE$stub
Lj527:
	movl	-16(%ebp),%eax
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__RECORDFILTER$POINTER$LONGINT$$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__RECORDFILTER$POINTER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,356(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	356(%eax),%ecx
	movl	384(%edx),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%eax,(%ecx)
	movb	$1,-14(%ebp)
	cmpb	$0,-14(%ebp)
	jne	Lj610
	jmp	Lj609
Lj610:
	movl	-12(%ebp),%eax
	cmpl	$0,308(%eax)
	jne	Lj608
	jmp	Lj609
Lj608:
	movl	-12(%ebp),%eax
	movl	312(%eax),%eax
	leal	-14(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	308(%ebx),%ebx
	call	*%ebx
Lj609:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movb	-14(%ebp),%al
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETCANMODIFY$$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__GETCANMODIFY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	361(%eax),%al
	testb	%al,%al
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__LOADFIELDSCHEME$TSTRINGS$LONGINT
_SDFDATA_TFIXEDFORMATDATASET_$__LOADFIELDSCHEME$TSTRINGS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj628
Lj628:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-124(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj629
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj628(%edi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-20(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj638
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-12(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$0,%eax
	jg	Lj642
	jmp	Lj643
Lj642:
	movl	-12(%ebp),%eax
	movl	348(%eax),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEWHITELINES$TSTRINGS$BOOLEAN$stub
	jmp	Lj656
Lj643:
	movl	-20(%ebp),%eax
	movl	L_$SDFDATA$_Ld9$non_lazy_ptr-Lj628(%edi),%edx
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj656:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj662
	decl	-24(%ebp)
	.align 2
Lj663:
	incl	-24(%ebp)
	leal	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj672
	jmp	Lj673
Lj672:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-124(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-124(%ebp),%eax
	movl	%eax,-116(%ebp)
	movl	$11,-120(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	$0,-112(%ebp)
	leal	-120(%ebp),%edx
	movl	$1,%eax
	movl	L_$SDFDATA$_Ld11$non_lazy_ptr-Lj628(%edi),%esi
	movl	%eax,%ecx
	movl	%esi,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj688
Lj673:
	leal	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
Lj688:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%ebx
	jg	Lj663
Lj662:
Lj638:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj639
	decl	%eax
	testl	%eax,%eax
	je	Lj640
Lj640:
	call	LFPC_RERAISE$stub
Lj639:
Lj629:
	call	LFPC_POPADDRSTACK$stub
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj630
	call	LFPC_RERAISE$stub
Lj630:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj715
	jmp	Lj716
Lj715:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$0,%eax
	jg	Lj717
	jmp	Lj718
Lj717:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDPOS$PCHAR$LONGINT$stub
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_STREND$PCHAR$$PCHAR$stub
	cmpl	-24(%ebp),%eax
	setab	-13(%ebp)
	jmp	Lj731
Lj718:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	decl	%eax
	cmpl	$3,%eax
	jb	Lj734
	cmpl	$4,%eax
	stc
	je	Lj734
	clc
Lj734:
	jc	Lj732
	jmp	Lj733
Lj732:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzwl	148(%eax),%edx
	movl	376(%ecx),%eax
	addl	%edx,%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
Lj733:
Lj731:
Lj716:
	cmpb	$0,-13(%ebp)
	jne	Lj741
	jmp	Lj740
Lj741:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj739
	jmp	Lj740
Lj739:
	movl	-4(%ebp),%eax
	movl	192(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub
	movl	-12(%ebp),%eax
	cmpb	$0,363(%eax)
	jne	Lj748
	jmp	Lj749
Lj748:
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_STREND$PCHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	.align 2
Lj754:
	decl	-20(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj757
	jmp	Lj758
Lj757:
	movl	-20(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj761
Lj758:
	jmp	Lj756
Lj761:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj756
	jmp	Lj754
Lj756:
Lj749:
Lj740:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDDATA$TFIELD$POINTER
_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDDATA$TFIELD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj763
Lj763:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-76(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj764
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$6,%eax
	jb	Lj769
	cmpl	$9,%eax
	stc
	je	Lj769
	clc
Lj769:
	jnc	Lj767
	jmp	Lj768
Lj767:
	movl	-12(%ebp),%edx
	movl	L_RESSTR_DBCONST_SNOTEDITING$non_lazy_ptr-Lj763(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub
Lj768:
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$0,%eax
	jg	Lj778
	jmp	Lj779
Lj778:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$5,%eax
	je	Lj780
	jmp	Lj781
Lj780:
	movl	-12(%ebp),%edx
	movl	L_$SDFDATA$_Ld13$non_lazy_ptr-Lj763(%ebx),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub
Lj781:
	movl	-4(%ebp),%eax
	cmpb	$0,188(%eax)
	jne	Lj788
	jmp	Lj787
Lj788:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$4,%eax
	je	Lj789
	cmpl	$6,%eax
	je	Lj789
Lj789:
	jne	Lj786
	jmp	Lj787
Lj786:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__GETDISPLAYNAME$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	L_RESSTR_DBCONST_SREADONLYFIELD$non_lazy_ptr-Lj763(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$stub
Lj787:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj802
	cmpl	$5,%eax
	stc
	je	Lj802
	clc
Lj802:
	jc	Lj800
	jmp	Lj801
Lj800:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__VALIDATE$POINTER$stub
Lj801:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	$3,%eax
	jne	Lj807
	jmp	Lj808
Lj807:
	movl	-4(%ebp),%eax
	movl	104(%eax),%ecx
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDPOS$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	call	L_SYSUTILS_STREND$PCHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj821
	jmp	Lj822
Lj821:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj822:
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-20(%ebp),%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj835
	jmp	Lj836
Lj835:
	movl	-4(%ebp),%eax
	movl	192(%eax),%eax
	movl	%eax,-24(%ebp)
Lj836:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj808:
	jmp	Lj845
Lj779:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzwl	148(%eax),%edx
	movl	376(%ecx),%eax
	addl	%edx,%eax
	addl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj845:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj854
Lj854:
	jnc	Lj852
	jmp	Lj853
Lj852:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*260(%esi)
Lj853:
Lj764:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj765
	call	LFPC_RERAISE$stub
Lj765:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDPOS$PCHAR$LONGINT
_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDPOS$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$1,-16(%ebp)
	jmp	Lj866
	.align 2
Lj865:
	movl	-16(%ebp),%edx
	decl	%edx
	movl	-12(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	addl	%eax,(%edx)
	incl	-16(%ebp)
Lj866:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj872
	jmp	Lj867
Lj872:
	movl	-12(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj865
	jmp	Lj867
Lj867:
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALFIRST
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALFIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,368(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALLAST
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,368(%edx)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALPOST
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALPOST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj887
	movl	-4(%ebp),%eax
	movb	$1,392(%eax)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__UPDATERECORD$stub
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$2,%eax
	je	Lj894
	jmp	Lj895
Lj894:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	leal	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*752(%ebx)
	movl	-48(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	364(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	jmp	Lj910
Lj895:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*512(%ebx)
Lj910:
Lj887:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj888
	call	LFPC_RERAISE$stub
Lj888:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALEDIT
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALEDIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALDELETE
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALDELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,392(%eax)
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	368(%ebx),%eax
	jle	Lj929
	jmp	Lj930
Lj929:
	movl	-4(%ebp),%eax
	decl	368(%eax)
Lj930:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj935
	movl	-12(%ebp),%eax
	movb	$1,392(%eax)
	movl	-12(%ebp),%eax
	incl	380(%eax)
	cmpb	$0,-8(%ebp)
	jne	Lj940
	jmp	Lj941
Lj940:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*536(%edx)
Lj941:
	movl	-12(%ebp),%eax
	movl	368(%eax),%eax
	cmpl	$0,%eax
	jge	Lj944
	jmp	Lj945
Lj944:
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*752(%ebx)
	movl	-56(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	368(%eax),%edx
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	call	L_CLASSES_TSTRINGS_$__INSERTOBJECT$LONGINT$ANSISTRING$TOBJECT$stub
	jmp	Lj960
Lj945:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*752(%ebx)
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	380(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	364(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*168(%ebx)
Lj960:
Lj935:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj936
	call	LFPC_RERAISE$stub
Lj936:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALGOTOBOOKMARK$POINTER
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALGOTOBOOKMARK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj974
Lj974:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj981
	jmp	Lj982
Lj981:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,368(%eax)
	jmp	Lj985
Lj982:
	movl	L_$SDFDATA$_Ld15$non_lazy_ptr-Lj974(%ebx),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj985:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALSETTORECORD$PCHAR
_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALSETTORECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$3,%eax
	jne	Lj990
	jmp	Lj991
Lj990:
	movl	-8(%ebp),%eax
	movl	384(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*524(%ecx)
Lj991:
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%edx
	movl	216(%edx),%ecx
	movl	-8(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-12(%ebp),%eax
	movl	216(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEWHITELINES$TSTRINGS$BOOLEAN
_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEWHITELINES$TSTRINGS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1022
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj1026
	incl	-16(%ebp)
	.align 2
Lj1027:
	decl	-16(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-64(%ebp),%eax
	leal	-60(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1030
	jmp	Lj1031
Lj1030:
	cmpb	$0,-8(%ebp)
	jne	Lj1042
	jmp	Lj1043
Lj1042:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,368(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*516(%edx)
	jmp	Lj1048
Lj1043:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj1048:
Lj1031:
	cmpl	$0,-16(%ebp)
	jg	Lj1027
Lj1026:
Lj1022:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1023
	call	LFPC_RERAISE$stub
Lj1023:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEBLANKRECORDS
_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEBLANKRECORDS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEWHITELINES$TSTRINGS$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEEXTRACOLUMNS
_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEEXTRACOLUMNS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj1062
Lj1062:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1063
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj1067
	incl	-8(%ebp)
	.align 2
Lj1068:
	decl	-8(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-60(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-60(%ebp),%edx
	leal	-56(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*756(%esi)
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	jne	Lj1087
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1062(%ebx),%eax
	movl	%eax,%edx
Lj1087:
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*752(%esi)
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	cmpl	$0,-8(%ebp)
	jg	Lj1068
Lj1067:
	movl	-4(%ebp),%eax
	movl	352(%eax),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
Lj1063:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1064
	call	LFPC_RERAISE$stub
Lj1064:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__SAVEFILEAS$ANSISTRING
_SDFDATA_TFIXEDFORMATDATASET_$__SAVEFILEAS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1102
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	352(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,352(%ebx)
	movl	-8(%ebp),%eax
	movb	$0,392(%eax)
Lj1102:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1103
	call	LFPC_RERAISE$stub
Lj1103:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__STORETOBUF$ANSISTRING$$ANSISTRING
_SDFDATA_TFIXEDFORMATDATASET_$__STORETOBUF$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1115
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj1115:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1116
	call	LFPC_RERAISE$stub
Lj1116:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TFIXEDFORMATDATASET_$__BUFTOSTORE$PCHAR$$ANSISTRING
_SDFDATA_TFIXEDFORMATDATASET_$__BUFTOSTORE$PCHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1122
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-56(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	376(%edx),%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
Lj1122:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1123
	call	LFPC_RERAISE$stub
Lj1123:
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__CREATE$TCOMPONENT$$TSDFDATASET
_SDFDATA_TSDFDATASET_$__CREATE$TCOMPONENT$$TSDFDATASET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1139
	jmp	Lj1140
Lj1139:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1140:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1145
	jmp	Lj1146
Lj1145:
	jmp	Lj1137
Lj1146:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1149
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1153
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__CREATE$TCOMPONENT$$TFIXEDFORMATDATASET$stub
	movl	-12(%ebp),%eax
	movb	$44,404(%eax)
	movl	-12(%ebp),%eax
	movb	$0,405(%eax)
	movl	-12(%ebp),%eax
	movb	$0,406(%eax)
Lj1153:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1154
	call	LFPC_RERAISE$stub
Lj1154:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1170
	jmp	Lj1169
Lj1170:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1168
	jmp	Lj1169
Lj1168:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1169:
Lj1149:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1151
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1174
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1175
	jmp	Lj1176
Lj1175:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1176:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1174:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1173
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1173:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1151
Lj1151:
Lj1137:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__INTERNALINITFIELDDEFS
_SDFDATA_TSDFDATASET_$__INTERNALINITFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj1182
Lj1182:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-100(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1183
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*572(%edx)
	testb	%al,%al
	je	Lj1186
	jmp	Lj1187
Lj1186:
	jmp	Lj1183
Lj1187:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	je	Lj1193
	jmp	Lj1191
Lj1193:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$0,%eax
	jg	Lj1192
	jmp	Lj1191
Lj1192:
	movl	-4(%ebp),%eax
	cmpb	$0,405(%eax)
	jne	Lj1190
	jmp	Lj1191
Lj1190:
	movl	-4(%ebp),%eax
	movb	404(%eax),%dl
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_CLASSES_TSTRINGS_$__SETDELIMITER$CHAR$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	leal	-60(%ebp),%edx
	call	L_CLASSES_TSTRINGS_$__GETDELIMITEDTEXT$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	call	L_CLASSES_TSTRINGS_$__APPEND$ANSISTRING$stub
	jmp	Lj1210
Lj1191:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	je	Lj1211
	jmp	Lj1213
Lj1213:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-64(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-64(%ebp),%eax
	leal	-60(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1211
	jmp	Lj1212
Lj1211:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_SDFDATA_TSDFDATASET_$__SETFIRSTLINEASSCHEMA$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	$0,400(%eax)
	jmp	Lj1232
Lj1212:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	je	Lj1233
	jmp	Lj1235
Lj1235:
	movl	-4(%ebp),%eax
	cmpb	$0,405(%eax)
	jne	Lj1233
	jmp	Lj1234
Lj1233:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-64(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1248
	movl	-4(%eax),%eax
Lj1248:
	movl	%eax,-16(%ebp)
	movl	$1,-12(%ebp)
	.align 2
Lj1251:
	jmp	Lj1255
	.align 2
Lj1254:
	incl	-12(%ebp)
Lj1255:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1257
	jmp	Lj1256
Lj1257:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-64(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	decl	%eax
	cmpl	$32,%eax
	jb	Lj1264
Lj1264:
	jc	Lj1254
	jmp	Lj1256
Lj1256:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj1265
	jmp	Lj1266
Lj1265:
	jmp	Lj1253
Lj1266:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-60(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$34,%al
	je	Lj1269
	jmp	Lj1270
Lj1269:
	.align 2
Lj1277:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj1279
	jmp	Lj1280
Lj1280:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-68(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-68(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$34,%al
	je	Lj1279
	jmp	Lj1277
Lj1279:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-72(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-72(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$34,%al
	je	Lj1287
	jmp	Lj1288
Lj1287:
	incl	-8(%ebp)
Lj1288:
	jmp	Lj1295
Lj1270:
	jmp	Lj1297
	.align 2
Lj1296:
	incl	-12(%ebp)
Lj1297:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1299
	jmp	Lj1298
Lj1299:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-76(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-76(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%ecx
	movb	-1(%edx,%eax,1),%al
	cmpb	404(%ecx),%al
	jne	Lj1296
	jmp	Lj1298
Lj1298:
Lj1295:
	movl	-4(%ebp),%eax
	cmpb	$0,405(%eax)
	jne	Lj1306
	jmp	Lj1307
Lj1306:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-84(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-84(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	subl	%edx,%ecx
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	348(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj1326
Lj1307:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	incl	%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	$0,%ecx
	movl	L_$SDFDATA$_Ld17$non_lazy_ptr-Lj1182(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	348(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1326:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-84(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-84(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$34,%al
	je	Lj1341
	jmp	Lj1342
Lj1341:
	jmp	Lj1350
	.align 2
Lj1349:
	incl	-12(%ebp)
Lj1350:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1352
	jmp	Lj1351
Lj1352:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-96(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-96(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movb	-1(%eax,%edx,1),%al
	cmpb	404(%ecx),%al
	jne	Lj1349
	jmp	Lj1351
Lj1351:
Lj1342:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	leal	-100(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	364(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-100(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%ecx
	movb	-1(%edx,%eax,1),%al
	cmpb	404(%ecx),%al
	je	Lj1359
	jmp	Lj1360
Lj1359:
	incl	-12(%ebp)
Lj1360:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj1253
	jmp	Lj1251
Lj1253:
Lj1234:
Lj1232:
Lj1210:
	movl	-4(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITFIELDDEFS$stub
Lj1183:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1184
	call	LFPC_RERAISE$stub
Lj1184:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
_SDFDATA_TSDFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,405(%eax)
	jne	Lj1371
	jmp	Lj1372
Lj1371:
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	movl	-12(%ebp),%edx
	movl	364(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$2,%eax
	jl	Lj1373
	jmp	Lj1374
Lj1373:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1377
	jmp	Lj1378
Lj1377:
	movl	$1,-16(%ebp)
	jmp	Lj1381
Lj1378:
	movl	$2,-16(%ebp)
Lj1381:
	jmp	Lj1384
Lj1374:
	movl	-12(%ebp),%eax
	movl	368(%eax),%eax
	cmpl	$-1,%eax
	je	Lj1387
	jmp	Lj1386
Lj1387:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1385
	jmp	Lj1386
Lj1385:
	movl	-12(%ebp),%eax
	incl	368(%eax)
Lj1386:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT$stub
	movl	%eax,-16(%ebp)
Lj1384:
	jmp	Lj1398
Lj1372:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT$stub
	movl	%eax,-16(%ebp)
Lj1398:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__STORETOBUF$ANSISTRING$$ANSISTRING
_SDFDATA_TSDFDATASET_$__STORETOBUF$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-196(%ebp)
	movl	%esi,-192(%ebp)
	movl	%edi,-188(%ebp)
	call	Lj1410
Lj1410:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-48(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1411
	movl	-8(%ebp),%eax
	movl	376(%eax),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	movl	376(%eax),%edx
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1422
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1410(%edi),%ecx
	movl	%ecx,%eax
Lj1422:
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1427
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1410(%edi),%edx
	movl	%edx,%eax
Lj1427:
	movl	%eax,-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1430
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1410(%edi),%edx
	movl	%edx,%eax
Lj1430:
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1432
	decl	-24(%ebp)
	.align 2
Lj1433:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	48(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	$0,-13(%ebp)
	jmp	Lj1445
	.align 2
Lj1444:
	movl	-8(%ebp),%eax
	cmpb	$0,406(%eax)
	jne	Lj1447
	jmp	Lj1448
Lj1447:
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_CR$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1449
	jmp	Lj1451
Lj1451:
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_LF$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1449
	jmp	Lj1450
Lj1449:
Lj1450:
	jmp	Lj1452
Lj1448:
	incl	-44(%ebp)
Lj1452:
Lj1445:
	movl	-44(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj1453
	jmp	Lj1446
Lj1453:
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	decl	%eax
	cmpl	$32,%eax
	jb	Lj1456
Lj1456:
	jc	Lj1444
	jmp	Lj1446
Lj1446:
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1457
	jmp	Lj1458
Lj1457:
	jmp	Lj1432
Lj1458:
	movl	-44(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1463
	jmp	Lj1464
Lj1463:
	movb	$1,-13(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,406(%eax)
	jne	Lj1467
	jmp	Lj1468
Lj1467:
	.align 2
Lj1469:
	incl	-44(%ebp)
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1471
	jmp	Lj1472
Lj1472:
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1475
	jmp	Lj1469
Lj1475:
	movl	-44(%ebp),%esi
	incl	%esi
	movl	$32,(%esp)
	movl	L_$SDFDATA$_Ld19$non_lazy_ptr-Lj1410(%edi),%eax
	movl	-8(%ebp),%edx
	movzbl	404(%edx),%edx
	movl	%edx,%ecx
	leal	-120(%ebp),%edx
	call	Lfpc_varset_set$stub
	movzbl	(%esi),%eax
	btl	%eax,-120(%ebp)
	jc	Lj1471
	jmp	Lj1469
Lj1471:
	jmp	Lj1484
Lj1468:
	.align 2
Lj1485:
	incl	-44(%ebp)
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1487
	jmp	Lj1488
Lj1488:
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1491
	jmp	Lj1485
Lj1491:
	movl	-44(%ebp),%esi
	incl	%esi
	movl	$32,(%esp)
	movl	L_$SDFDATA$_Ld19$non_lazy_ptr-Lj1410(%edi),%eax
	movl	-8(%ebp),%edx
	movzbl	404(%edx),%edx
	movl	%edx,%ecx
	leal	-184(%ebp),%edx
	call	Lfpc_varset_set$stub
	leal	-184(%ebp),%eax
	movl	$32,(%esp)
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_CR$non_lazy_ptr-Lj1410(%edi),%edx
	movzbl	(%edx),%edx
	movl	%edx,%ecx
	leal	-152(%ebp),%edx
	call	Lfpc_varset_set$stub
	leal	-152(%ebp),%eax
	movl	$32,(%esp)
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_LF$non_lazy_ptr-Lj1410(%edi),%edx
	movzbl	(%edx),%edx
	movl	%edx,%ecx
	leal	-120(%ebp),%edx
	call	Lfpc_varset_set$stub
	movzbl	(%esi),%eax
	btl	%eax,-120(%ebp)
	jc	Lj1487
	jmp	Lj1485
Lj1487:
Lj1484:
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1516
	jmp	Lj1517
Lj1516:
	incl	-40(%ebp)
Lj1517:
	jmp	Lj1518
Lj1464:
	jmp	Lj1520
	.align 2
Lj1519:
	incl	-44(%ebp)
Lj1520:
	movl	-44(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj1522
	jmp	Lj1521
Lj1522:
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movb	404(%eax),%al
	cmpb	(%edx),%al
	jne	Lj1519
	jmp	Lj1521
Lj1521:
Lj1518:
	movl	-44(%ebp),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1527
	jmp	Lj1528
Lj1527:
	movl	-36(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj1532
	.align 2
Lj1531:
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1534
	jmp	Lj1535
Lj1534:
	incl	-40(%ebp)
Lj1535:
	movl	-32(%ebp),%edx
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-40(%ebp)
	incl	-32(%ebp)
Lj1532:
	movl	-40(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jb	Lj1538
	jmp	Lj1533
Lj1538:
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1531
	jmp	Lj1533
Lj1533:
	jmp	Lj1539
Lj1528:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj1540
	jmp	Lj1541
Lj1540:
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj1541:
	movl	-36(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1539:
	movl	-20(%ebp),%eax
	addl	%eax,-36(%ebp)
	movl	-44(%ebp),%eax
	movb	(%eax),%al
	movl	L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr-Lj1410(%edi),%edx
	cmpb	(%edx),%al
	je	Lj1550
	jmp	Lj1551
Lj1550:
	jmp	Lj1553
	.align 2
Lj1552:
	incl	-44(%ebp)
Lj1553:
	movl	-44(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj1555
	jmp	Lj1554
Lj1555:
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movb	404(%eax),%al
	cmpb	(%edx),%al
	jne	Lj1552
	jmp	Lj1554
Lj1554:
Lj1551:
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movb	404(%eax),%al
	cmpb	(%edx),%al
	je	Lj1558
	jmp	Lj1559
Lj1558:
	incl	-44(%ebp)
Lj1559:
	cmpl	-24(%ebp),%ebx
	jg	Lj1433
Lj1432:
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj1411:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-48(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1412
	call	LFPC_RERAISE$stub
Lj1412:
	movl	-196(%ebp),%ebx
	movl	-192(%ebp),%esi
	movl	-188(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__BUFTOSTORE$PCHAR$$ANSISTRING
_SDFDATA_TSDFDATASET_$__BUFTOSTORE$PCHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj1569
Lj1569:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1570
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	$1,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1578
	decl	-24(%ebp)
	.align 2
Lj1579:
	incl	-24(%ebp)
	movb	$0,-25(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	48(%eax),%edi
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-76(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edi,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	leal	-16(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	48(%eax),%eax
	addl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,406(%eax)
	jne	Lj1608
	jmp	Lj1609
Lj1608:
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj1612
	jmp	Lj1611
Lj1612:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1615
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1569(%esi),%edx
	movl	%edx,%eax
Lj1615:
	movb	$10,%dl
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	testl	%eax,%eax
	jne	Lj1610
	jmp	Lj1611
Lj1610:
	movb	$1,-25(%ebp)
Lj1611:
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj1622
	jmp	Lj1621
Lj1622:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1625
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1569(%esi),%edx
	movl	%edx,%eax
Lj1625:
	movb	$13,%dl
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	testl	%eax,%eax
	jne	Lj1620
	jmp	Lj1621
Lj1620:
	movb	$1,-25(%ebp)
Lj1621:
	jmp	Lj1630
Lj1609:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	$0,%edx
	movl	L_$SDFDATA$_Ld20$non_lazy_ptr-Lj1569(%esi),%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	$0,%ecx
	movl	L_$SDFDATA$_Ld22$non_lazy_ptr-Lj1569(%esi),%edx
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1630:
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj1655
	jmp	Lj1656
Lj1655:
	movl	-8(%ebp),%eax
	movb	404(%eax),%dl
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1664
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1569(%esi),%ecx
	movl	%ecx,%eax
Lj1664:
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	testl	%eax,%eax
	jne	Lj1657
	jmp	Lj1659
Lj1659:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1667
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1569(%esi),%edx
	movl	%edx,%eax
Lj1667:
	movb	$34,%dl
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	testl	%eax,%eax
	jne	Lj1657
	jmp	Lj1658
Lj1657:
	movb	$1,-25(%ebp)
Lj1658:
Lj1656:
	cmpb	$0,-25(%ebp)
	jne	Lj1672
	jmp	Lj1673
Lj1672:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	L_$SDFDATA$_Ld24$non_lazy_ptr-Lj1569(%esi),%ecx
	movl	L_$SDFDATA$_Ld26$non_lazy_ptr-Lj1569(%esi),%edx
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_$SDFDATA$_Ld26$non_lazy_ptr-Lj1569(%esi),%eax
	movl	%eax,-88(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	L_$SDFDATA$_Ld26$non_lazy_ptr-Lj1569(%esi),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1673:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-8(%ebp),%eax
	movb	404(%eax),%al
	leal	-76(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-24(%ebp),%ebx
	jg	Lj1579
Lj1578:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1704
	movl	-4(%eax),%eax
Lj1704:
	movl	%eax,-20(%ebp)
	jmp	Lj1706
	.align 2
Lj1705:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	decl	-20(%ebp)
Lj1706:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1714
	jmp	Lj1707
Lj1714:
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%ecx
	movb	404(%ebx),%al
	cmpb	-1(%edx,%ecx,1),%al
	je	Lj1705
	jmp	Lj1707
Lj1707:
Lj1570:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1571
	call	LFPC_RERAISE$stub
Lj1571:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__SETDELIMITER$CHAR
_SDFDATA_TSDFDATASET_$__SETDELIMITER$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,404(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__SETFIRSTLINEASSCHEMA$BOOLEAN
_SDFDATA_TSDFDATASET_$__SETFIRSTLINEASSCHEMA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,405(%eax)
	movl	-8(%ebp),%eax
	movzbl	405(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,400(%edx)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_TSDFDATASET_$__SETMULTILINE$BOOLEAN
_SDFDATA_TSDFDATASET_$__SETMULTILINE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,406(%eax)
	leave
	ret

.text
	.align 4
.globl	_SDFDATA_REGISTER
_SDFDATA_REGISTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1742
Lj1742:
	popl	%ebx
	movl	L_VMT_SDFDATA_TFIXEDFORMATDATASET$non_lazy_ptr-Lj1742(%ebx),%eax
	movl	%eax,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	$0,%ecx
	movl	L_$SDFDATA$_Ld28$non_lazy_ptr-Lj1742(%ebx),%eax
	call	L_CLASSES_REGISTERCOMPONENTS$ANSISTRING$array_of_TCOMPONENTCLASS$stub
	movl	L_VMT_SDFDATA_TSDFDATASET$non_lazy_ptr-Lj1742(%ebx),%eax
	movl	%eax,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	$0,%ecx
	movl	L_$SDFDATA$_Ld28$non_lazy_ptr-Lj1742(%ebx),%eax
	call	L_CLASSES_REGISTERCOMPONENTS$ANSISTRING$array_of_TCOMPONENTCLASS$stub
	movl	-8(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$SDFDATA$_Ld30
_$SDFDATA$_Ld30:
	.byte	19
	.ascii	"TFixedFormatDataSet"

.const_data
	.align 2
.globl	_VMT_SDFDATA_TFIXEDFORMATDATASET
_VMT_SDFDATA_TFIXEDFORMATDATASET:
	.long	404,-404
	.long	_VMT_DB_TDATASET
	.long	_$SDFDATA$_Ld30
	.long	0,0
	.long	_$SDFDATA$_Ld31
	.long	_RTTI_SDFDATA_TFIXEDFORMATDATASET
	.long	_INIT_SDFDATA_TFIXEDFORMATDATASET
	.long	0,0,0
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__DESTROY
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
	.long	_DB_TDATASET_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_DB_TDATASET_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_DB_TDATASET_$__SETNAME$ANSISTRING
	.long	_DB_TDATASET_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__CREATE$TCOMPONENT$$TFIXEDFORMATDATASET
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_DB_TDATASET_$__SETBLOCKREADSIZE$LONGINT
	.long	_DB_TDATASET_$__ACTIVATEBUFFERS
	.long	_DB_TDATASET_$__BLOCKREADNEXT
	.long	_DB_TDATASET_$__CALCULATEFIELDS$PCHAR
	.long	_DB_TDATASET_$__CHECKACTIVE
	.long	_DB_TDATASET_$__CHECKINACTIVE
	.long	_DB_TDATASET_$__CLEARBUFFERS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__CLEARCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__CLOSEBLOB$TFIELD
	.long	_DB_TDATASET_$__CLOSECURSOR
	.long	_DB_TDATASET_$__CREATEFIELDS
	.long	_DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
	.long	_DB_TDATASET_$__DESTROYFIELDS
	.long	_DB_TDATASET_$__DOAFTERCANCEL
	.long	_DB_TDATASET_$__DOAFTERCLOSE
	.long	_DB_TDATASET_$__DOAFTERDELETE
	.long	_DB_TDATASET_$__DOAFTEREDIT
	.long	_DB_TDATASET_$__DOAFTERINSERT
	.long	_DB_TDATASET_$__DOAFTEROPEN
	.long	_DB_TDATASET_$__DOAFTERPOST
	.long	_DB_TDATASET_$__DOAFTERSCROLL
	.long	_DB_TDATASET_$__DOAFTERREFRESH
	.long	_DB_TDATASET_$__DOBEFORECANCEL
	.long	_DB_TDATASET_$__DOBEFORECLOSE
	.long	_DB_TDATASET_$__DOBEFOREDELETE
	.long	_DB_TDATASET_$__DOBEFOREEDIT
	.long	_DB_TDATASET_$__DOBEFOREINSERT
	.long	_DB_TDATASET_$__DOBEFOREOPEN
	.long	_DB_TDATASET_$__DOBEFOREPOST
	.long	_DB_TDATASET_$__DOBEFORESCROLL
	.long	_DB_TDATASET_$__DOBEFOREREFRESH
	.long	_DB_TDATASET_$__DOONCALCFIELDS
	.long	_DB_TDATASET_$__DOONNEWRECORD
	.long	_DB_TDATASET_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
	.long	_DB_TDATASET_$__FREEFIELDBUFFERS
	.long	_DB_TDATASET_$__GETBOOKMARKSTR$$ANSISTRING
	.long	_DB_TDATASET_$__GETCALCFIELDS$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETCANMODIFY$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDCLASS$TFIELDTYPE$$TFIELDCLASS
	.long	_DB_TDATASET_$__GETFIELDVALUES$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__GETISINDEXFIELD$TFIELD$$BOOLEAN
	.long	_DB_TDATASET_$__GETNEXTRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETNEXTRECORD$$BOOLEAN
	.long	_DB_TDATASET_$__GETPRIORRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETPRIORRECORD$$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDCOUNT$$LONGINT
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECNO$$LONGINT
	.long	_DB_TDATASET_$__INITFIELDDEFS
	.long	_DB_TDATASET_$__INITRECORD$PCHAR
	.long	_DB_TDATASET_$__INTERNALCANCEL
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALEDIT
	.long	_DB_TDATASET_$__INTERNALINSERT
	.long	_DB_TDATASET_$__INTERNALREFRESH
	.long	_DB_TDATASET_$__OPENCURSOR$BOOLEAN
	.long	_DB_TDATASET_$__OPENCURSORCOMPLETE
	.long	_DB_TDATASET_$__REFRESHINTERNALCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__SETACTIVE$BOOLEAN
	.long	_DB_TDATASET_$__SETBOOKMARKSTR$ANSISTRING
	.long	_DB_TDATASET_$__SETBUFLISTSIZE$LONGINT
	.long	_DB_TDATASET_$__SETCURRENTRECORD$LONGINT
	.long	_DB_TDATASET_$__SETFILTERED$BOOLEAN
	.long	_DB_TDATASET_$__SETFILTEROPTIONS$TFILTEROPTIONS
	.long	_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING
	.long	_DB_TDATASET_$__SETFIELDVALUES$ANSISTRING$VARIANT
	.long	_DB_TDATASET_$__SETFOUND$BOOLEAN
	.long	_DB_TDATASET_$__SETONFILTERRECORD$TFILTERRECORDEVENT
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETRECNO$LONGINT
	.long	_DB_TDATASET_$__UPDATEINDEXDEFS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__ALLOCRECORDBUFFER$$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__FREERECORDBUFFER$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
	.long	_DB_TDATASET_$__GETDATASOURCE$$TDATASOURCE
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDSIZE$$WORD
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALDELETE
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALFIRST
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALGOTOBOOKMARK$POINTER
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALHANDLEEXCEPTION
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITRECORD$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALLAST
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALPOST
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALSETTORECORD$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALCLOSE
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALOPEN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITFIELDDEFS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__ISCURSOROPEN$$BOOLEAN
	.long	_DB_TDATASET_$__PSENDTRANSACTION$BOOLEAN
	.long	_DB_TDATASET_$__PSEXECUTE
	.long	_DB_TDATASET_$__PSEXECUTESTATEMENT$ANSISTRING$TPARAMS$POINTER$$LONGINT
	.long	_DB_TDATASET_$__PSGETATTRIBUTES$TLIST
	.long	_DB_TDATASET_$__PSGETCOMMANDTEXT$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETCOMMANDTYPE$$TPSCOMMANDTYPE
	.long	_DB_TDATASET_$__PSGETDEFAULTORDER$$TINDEXDEF
	.long	_DB_TDATASET_$__PSGETINDEXDEFS$TINDEXOPTIONS$$TINDEXDEFS
	.long	_DB_TDATASET_$__PSGETKEYFIELDS$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETPARAMS$$TPARAMS
	.long	_DB_TDATASET_$__PSGETQUOTECHAR$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETTABLENAME$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETUPDATEEXCEPTION$EXCEPTION$EUPDATEERROR$$EUPDATEERROR
	.long	_DB_TDATASET_$__PSINTRANSACTION$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLBASED$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLSUPPORTED$$BOOLEAN
	.long	_DB_TDATASET_$__PSRESET
	.long	_DB_TDATASET_$__PSSETCOMMANDTEXT$ANSISTRING
	.long	_DB_TDATASET_$__PSSETPARAMS$TPARAMS
	.long	_DB_TDATASET_$__PSSTARTTRANSACTION
	.long	_DB_TDATASET_$__PSUPDATERECORD$TUPDATEKIND$TDATASET$$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDDATA$TFIELD$POINTER
	.long	_DB_TDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__CANCEL
	.long	_DB_TDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
	.long	_DB_TDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
	.long	_DB_TDATASET_$__DATACONVERT$TFIELD$POINTER$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__FINDFIRST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDLAST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDNEXT$$BOOLEAN
	.long	_DB_TDATASET_$__FINDPRIOR$$BOOLEAN
	.long	_DB_TDATASET_$__FREEBOOKMARK$POINTER
	.long	_DB_TDATASET_$__GETBOOKMARK$$POINTER
	.long	_DB_TDATASET_$__GETCURRENTRECORD$PCHAR$$BOOLEAN
	.long	_DB_TDATASET_$__ISSEQUENCED$$BOOLEAN
	.long	_DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	.long	_DB_TDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__POST
	.long	_DB_TDATASET_$__RESYNC$TRESYNCMODE
	.long	_DB_TDATASET_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
	.long	_DB_TDATASET_$__UPDATESTATUS$$TUPDATESTATUS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__BUFTOSTORE$PCHAR$$ANSISTRING
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__STORETOBUF$ANSISTRING$$ANSISTRING
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEBLANKRECORDS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEEXTRACOLUMNS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SAVEFILEAS$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$SDFDATA$_Ld33
_$SDFDATA$_Ld33:
	.byte	11
	.ascii	"TSdfDataSet"

.const_data
	.align 2
.globl	_VMT_SDFDATA_TSDFDATASET
_VMT_SDFDATA_TSDFDATASET:
	.long	408,-408
	.long	_VMT_SDFDATA_TFIXEDFORMATDATASET
	.long	_$SDFDATA$_Ld33
	.long	0,0
	.long	_$SDFDATA$_Ld34
	.long	_RTTI_SDFDATA_TSDFDATASET
	.long	0,0,0,0
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__DESTROY
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
	.long	_DB_TDATASET_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_DB_TDATASET_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_DB_TDATASET_$__SETNAME$ANSISTRING
	.long	_DB_TDATASET_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_SDFDATA_TSDFDATASET_$__CREATE$TCOMPONENT$$TSDFDATASET
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_DB_TDATASET_$__SETBLOCKREADSIZE$LONGINT
	.long	_DB_TDATASET_$__ACTIVATEBUFFERS
	.long	_DB_TDATASET_$__BLOCKREADNEXT
	.long	_DB_TDATASET_$__CALCULATEFIELDS$PCHAR
	.long	_DB_TDATASET_$__CHECKACTIVE
	.long	_DB_TDATASET_$__CHECKINACTIVE
	.long	_DB_TDATASET_$__CLEARBUFFERS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__CLEARCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__CLOSEBLOB$TFIELD
	.long	_DB_TDATASET_$__CLOSECURSOR
	.long	_DB_TDATASET_$__CREATEFIELDS
	.long	_DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
	.long	_DB_TDATASET_$__DESTROYFIELDS
	.long	_DB_TDATASET_$__DOAFTERCANCEL
	.long	_DB_TDATASET_$__DOAFTERCLOSE
	.long	_DB_TDATASET_$__DOAFTERDELETE
	.long	_DB_TDATASET_$__DOAFTEREDIT
	.long	_DB_TDATASET_$__DOAFTERINSERT
	.long	_DB_TDATASET_$__DOAFTEROPEN
	.long	_DB_TDATASET_$__DOAFTERPOST
	.long	_DB_TDATASET_$__DOAFTERSCROLL
	.long	_DB_TDATASET_$__DOAFTERREFRESH
	.long	_DB_TDATASET_$__DOBEFORECANCEL
	.long	_DB_TDATASET_$__DOBEFORECLOSE
	.long	_DB_TDATASET_$__DOBEFOREDELETE
	.long	_DB_TDATASET_$__DOBEFOREEDIT
	.long	_DB_TDATASET_$__DOBEFOREINSERT
	.long	_DB_TDATASET_$__DOBEFOREOPEN
	.long	_DB_TDATASET_$__DOBEFOREPOST
	.long	_DB_TDATASET_$__DOBEFORESCROLL
	.long	_DB_TDATASET_$__DOBEFOREREFRESH
	.long	_DB_TDATASET_$__DOONCALCFIELDS
	.long	_DB_TDATASET_$__DOONNEWRECORD
	.long	_DB_TDATASET_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
	.long	_DB_TDATASET_$__FREEFIELDBUFFERS
	.long	_DB_TDATASET_$__GETBOOKMARKSTR$$ANSISTRING
	.long	_DB_TDATASET_$__GETCALCFIELDS$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETCANMODIFY$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDCLASS$TFIELDTYPE$$TFIELDCLASS
	.long	_DB_TDATASET_$__GETFIELDVALUES$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__GETISINDEXFIELD$TFIELD$$BOOLEAN
	.long	_DB_TDATASET_$__GETNEXTRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETNEXTRECORD$$BOOLEAN
	.long	_DB_TDATASET_$__GETPRIORRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETPRIORRECORD$$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDCOUNT$$LONGINT
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECNO$$LONGINT
	.long	_DB_TDATASET_$__INITFIELDDEFS
	.long	_DB_TDATASET_$__INITRECORD$PCHAR
	.long	_DB_TDATASET_$__INTERNALCANCEL
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALEDIT
	.long	_DB_TDATASET_$__INTERNALINSERT
	.long	_DB_TDATASET_$__INTERNALREFRESH
	.long	_DB_TDATASET_$__OPENCURSOR$BOOLEAN
	.long	_DB_TDATASET_$__OPENCURSORCOMPLETE
	.long	_DB_TDATASET_$__REFRESHINTERNALCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__SETACTIVE$BOOLEAN
	.long	_DB_TDATASET_$__SETBOOKMARKSTR$ANSISTRING
	.long	_DB_TDATASET_$__SETBUFLISTSIZE$LONGINT
	.long	_DB_TDATASET_$__SETCURRENTRECORD$LONGINT
	.long	_DB_TDATASET_$__SETFILTERED$BOOLEAN
	.long	_DB_TDATASET_$__SETFILTEROPTIONS$TFILTEROPTIONS
	.long	_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING
	.long	_DB_TDATASET_$__SETFIELDVALUES$ANSISTRING$VARIANT
	.long	_DB_TDATASET_$__SETFOUND$BOOLEAN
	.long	_DB_TDATASET_$__SETONFILTERRECORD$TFILTERRECORDEVENT
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETRECNO$LONGINT
	.long	_DB_TDATASET_$__UPDATEINDEXDEFS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__ALLOCRECORDBUFFER$$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__FREERECORDBUFFER$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
	.long	_DB_TDATASET_$__GETDATASOURCE$$TDATASOURCE
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORDSIZE$$WORD
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALDELETE
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALFIRST
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALGOTOBOOKMARK$POINTER
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALHANDLEEXCEPTION
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITRECORD$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALLAST
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALPOST
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALSETTORECORD$PCHAR
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
	.long	_SDFDATA_TSDFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALCLOSE
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALOPEN
	.long	_SDFDATA_TSDFDATASET_$__INTERNALINITFIELDDEFS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__ISCURSOROPEN$$BOOLEAN
	.long	_DB_TDATASET_$__PSENDTRANSACTION$BOOLEAN
	.long	_DB_TDATASET_$__PSEXECUTE
	.long	_DB_TDATASET_$__PSEXECUTESTATEMENT$ANSISTRING$TPARAMS$POINTER$$LONGINT
	.long	_DB_TDATASET_$__PSGETATTRIBUTES$TLIST
	.long	_DB_TDATASET_$__PSGETCOMMANDTEXT$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETCOMMANDTYPE$$TPSCOMMANDTYPE
	.long	_DB_TDATASET_$__PSGETDEFAULTORDER$$TINDEXDEF
	.long	_DB_TDATASET_$__PSGETINDEXDEFS$TINDEXOPTIONS$$TINDEXDEFS
	.long	_DB_TDATASET_$__PSGETKEYFIELDS$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETPARAMS$$TPARAMS
	.long	_DB_TDATASET_$__PSGETQUOTECHAR$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETTABLENAME$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETUPDATEEXCEPTION$EXCEPTION$EUPDATEERROR$$EUPDATEERROR
	.long	_DB_TDATASET_$__PSINTRANSACTION$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLBASED$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLSUPPORTED$$BOOLEAN
	.long	_DB_TDATASET_$__PSRESET
	.long	_DB_TDATASET_$__PSSETCOMMANDTEXT$ANSISTRING
	.long	_DB_TDATASET_$__PSSETPARAMS$TPARAMS
	.long	_DB_TDATASET_$__PSSTARTTRANSACTION
	.long	_DB_TDATASET_$__PSUPDATERECORD$TUPDATEKIND$TDATASET$$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDDATA$TFIELD$POINTER
	.long	_DB_TDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__CANCEL
	.long	_DB_TDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
	.long	_DB_TDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
	.long	_DB_TDATASET_$__DATACONVERT$TFIELD$POINTER$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__FINDFIRST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDLAST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDNEXT$$BOOLEAN
	.long	_DB_TDATASET_$__FINDPRIOR$$BOOLEAN
	.long	_DB_TDATASET_$__FREEBOOKMARK$POINTER
	.long	_DB_TDATASET_$__GETBOOKMARK$$POINTER
	.long	_DB_TDATASET_$__GETCURRENTRECORD$PCHAR$$BOOLEAN
	.long	_DB_TDATASET_$__ISSEQUENCED$$BOOLEAN
	.long	_DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	.long	_DB_TDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__POST
	.long	_DB_TDATASET_$__RESYNC$TRESYNCMODE
	.long	_DB_TDATASET_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
	.long	_DB_TDATASET_$__UPDATESTATUS$$TUPDATESTATUS
	.long	_SDFDATA_TSDFDATASET_$__BUFTOSTORE$PCHAR$$ANSISTRING
	.long	_SDFDATA_TSDFDATASET_$__STORETOBUF$ANSISTRING$$ANSISTRING
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEBLANKRECORDS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEEXTRACOLUMNS
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SAVEFILEAS$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_SDFDATA
_THREADVARLIST_SDFDATA:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$SDFDATA$_Ld2
_$SDFDATA$_Ld2:
	.short	0,1
	.long	0,-1,22
.reference _$SDFDATA$_Ld1
.globl	_$SDFDATA$_Ld1
_$SDFDATA$_Ld1:
.reference _$SDFDATA$_Ld2
	.ascii	"Data buffer unassigned\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld4
_$SDFDATA$_Ld4:
	.short	0,1
	.long	0,-1,41
.reference _$SDFDATA$_Ld3
.globl	_$SDFDATA$_Ld3
_$SDFDATA$_Ld3:
.reference _$SDFDATA$_Ld4
	.ascii	"Invalid Stream Assigned (Load From Stream\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld6
_$SDFDATA$_Ld6:
	.short	0,1
	.long	0,-1,39
.reference _$SDFDATA$_Ld5
.globl	_$SDFDATA$_Ld5
_$SDFDATA$_Ld5:
.reference _$SDFDATA$_Ld6
	.ascii	"Invalid Stream Assigned (Save To Stream\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld8
_$SDFDATA$_Ld8:
	.short	0,1
	.long	0,-1,10
.reference _$SDFDATA$_Ld7
.globl	_$SDFDATA$_Ld7
_$SDFDATA$_Ld7:
.reference _$SDFDATA$_Ld8
	.ascii	"No Records\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld10
_$SDFDATA$_Ld10:
	.short	0,1
	.long	0,-1,4
.reference _$SDFDATA$_Ld9
.globl	_$SDFDATA$_Ld9
_$SDFDATA$_Ld9:
.reference _$SDFDATA$_Ld10
	.ascii	"Line\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld12
_$SDFDATA$_Ld12:
	.short	0,1
	.long	0,-1,5
.reference _$SDFDATA$_Ld11
.globl	_$SDFDATA$_Ld11
_$SDFDATA$_Ld11:
.reference _$SDFDATA$_Ld12
	.ascii	"%s=%d\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld14
_$SDFDATA$_Ld14:
	.short	0,1
	.long	0,-1,34
.reference _$SDFDATA$_Ld13
.globl	_$SDFDATA$_Ld13
_$SDFDATA$_Ld13:
.reference _$SDFDATA$_Ld14
	.ascii	"Dataset not in edit or insert mode\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld16
_$SDFDATA$_Ld16:
	.short	0,1
	.long	0,-1,18
.reference _$SDFDATA$_Ld15
.globl	_$SDFDATA$_Ld15
_$SDFDATA$_Ld15:
.reference _$SDFDATA$_Ld16
	.ascii	"Bookmark not found\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld18
_$SDFDATA$_Ld18:
	.short	0,1
	.long	0,-1,7
.reference _$SDFDATA$_Ld17
.globl	_$SDFDATA$_Ld17
_$SDFDATA$_Ld17:
.reference _$SDFDATA$_Ld18
	.ascii	"Field%d\000"

.data
.globl	_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_CR
_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_CR:
	.byte	13

.data
.globl	_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_LF
_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_LF:
	.byte	10

.data
.globl	_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE
_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE:
	.byte	34

.const
	.align 3
.globl	_$SDFDATA$_Ld19
_$SDFDATA$_Ld19:
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$SDFDATA$_Ld21
_$SDFDATA$_Ld21:
	.short	0,1
	.long	0,-1,1
.reference _$SDFDATA$_Ld20
.globl	_$SDFDATA$_Ld20
_$SDFDATA$_Ld20:
.reference _$SDFDATA$_Ld21
	.ascii	"\012\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld23
_$SDFDATA$_Ld23:
	.short	0,1
	.long	0,-1,1
.reference _$SDFDATA$_Ld22
.globl	_$SDFDATA$_Ld22
_$SDFDATA$_Ld22:
.reference _$SDFDATA$_Ld23
	.ascii	"\015\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld25
_$SDFDATA$_Ld25:
	.short	0,1
	.long	0,-1,2
.reference _$SDFDATA$_Ld24
.globl	_$SDFDATA$_Ld24
_$SDFDATA$_Ld24:
.reference _$SDFDATA$_Ld25
	.ascii	"\"\"\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld27
_$SDFDATA$_Ld27:
	.short	0,1
	.long	0,-1,1
.reference _$SDFDATA$_Ld26
.globl	_$SDFDATA$_Ld26
_$SDFDATA$_Ld26:
.reference _$SDFDATA$_Ld27
	.ascii	"\"\000"

.const_data
	.align 2
.globl	_$SDFDATA$_Ld29
_$SDFDATA$_Ld29:
	.short	0,1
	.long	0,-1,11
.reference _$SDFDATA$_Ld28
.globl	_$SDFDATA$_Ld28
_$SDFDATA$_Ld28:
.reference _$SDFDATA$_Ld29
	.ascii	"Data Access\000"
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub:
.indirect_symbol _DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET
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

L_DB_TDATASET_$__DESTROY$stub:
.indirect_symbol _DB_TDATASET_$__DESTROY
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_CLASSES_TCOLLECTION_$__CLEAR$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TFIXEDFORMATDATASET_$__LOADFIELDSCHEME$TSTRINGS$LONGINT$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__LOADFIELDSCHEME$TSTRINGS$LONGINT
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

L_CLASSES_TSTRINGS_$__GETVALUE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__GETVALUE$ANSISTRING$$ANSISTRING
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

L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub:
.indirect_symbol _DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN
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

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__BINDFIELDS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__INTERNALHANDLEEXCEPTION$stub:
.indirect_symbol _DB_TDATASET_$__INTERNALHANDLEEXCEPTION
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

L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_ALLOCMEM$LONGWORD$$POINTER
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

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TFIXEDFORMATDATASET_$__TXTGETRECORD$PCHAR$TGETMODE$$TGETRESULT$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__TXTGETRECORD$PCHAR$TGETMODE$$TGETRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_DATABASEERROR$ANSISTRING$stub:
.indirect_symbol _DB_DATABASEERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__GETACTIVERECBUF$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CHECKBROWSEMODE$stub:
.indirect_symbol _DB_TDATASET_$__CHECKBROWSEMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__ISEMPTY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub:
.indirect_symbol _DB_TDATASET_$__ACTIVEBUFFER$$PCHAR
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

L_SDFDATA_TFIXEDFORMATDATASET_$__RECORDFILTER$POINTER$LONGINT$$BOOLEAN$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__RECORDFILTER$POINTER$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__RESTORESTATE$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TFIXEDFORMATDATASET_$__REMOVEWHITELINES$TSTRINGS$BOOLEAN$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__REMOVEWHITELINES$TSTRINGS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
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

L_SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDPOS$PCHAR$LONGINT$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__SETFIELDPOS$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STREND$PCHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STREND$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub:
.indirect_symbol _DB_DATABASEERROR$ANSISTRING$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELD_$__GETDISPLAYNAME$$ANSISTRING$stub:
.indirect_symbol _DB_TFIELD_$__GETDISPLAYNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$stub:
.indirect_symbol _DB_DATABASEERRORFMT$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELD_$__VALIDATE$POINTER$stub:
.indirect_symbol _DB_TFIELD_$__VALIDATE$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub:
.indirect_symbol _DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__UPDATERECORD$stub:
.indirect_symbol _DB_TDATASET_$__UPDATERECORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__INSERTOBJECT$LONGINT$ANSISTRING$TOBJECT$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__INSERTOBJECT$LONGINT$ANSISTRING$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
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

L_SDFDATA_TFIXEDFORMATDATASET_$__CREATE$TCOMPONENT$$TFIXEDFORMATDATASET$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__CREATE$TCOMPONENT$$TFIXEDFORMATDATASET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__SETDELIMITER$CHAR$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__SETDELIMITER$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__GETDELIMITEDTEXT$$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__GETDELIMITEDTEXT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__APPEND$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__APPEND$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TSDFDATASET_$__SETFIRSTLINEASSCHEMA$BOOLEAN$stub:
.indirect_symbol _SDFDATA_TSDFDATASET_$__SETFIRSTLINEASSCHEMA$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITFIELDDEFS$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__INTERNALINITFIELDDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT$stub:
.indirect_symbol _SDFDATA_TFIXEDFORMATDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
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

Lfpc_varset_set$stub:
.indirect_symbol fpc_varset_set
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
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

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
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

L_CLASSES_REGISTERCOMPONENTS$ANSISTRING$array_of_TCOMPONENTCLASS$stub:
.indirect_symbol _CLASSES_REGISTERCOMPONENTS$ANSISTRING$array_of_TCOMPONENTCLASS
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
.globl	_INIT_SDFDATA_PRECINFO
_INIT_SDFDATA_PRECINFO:
	.byte	0
	.ascii	"\010PRecInfo"

.const_data
	.align 2
.globl	_RTTI_SDFDATA_PRECINFO
_RTTI_SDFDATA_PRECINFO:
	.byte	0
	.ascii	"\010PRecInfo"

.const_data
	.align 2
.globl	_INIT_SDFDATA_TRECINFO
_INIT_SDFDATA_TRECINFO:
	.byte	13,8
	.ascii	"TRecInfo"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_SDFDATA_TRECINFO
_RTTI_SDFDATA_TRECINFO:
	.byte	13,8
	.ascii	"TRecInfo"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_DB_TBOOKMARKFLAG
	.long	4

.const_data
	.align 2
.globl	_INIT_SDFDATA_DEF192
_INIT_SDFDATA_DEF192:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SDFDATA_DEF201
_INIT_SDFDATA_DEF201:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$SDFDATA$_Ld31
_$SDFDATA$_Ld31:
	.short	0
	.long	_$SDFDATA$_Ld32
	.align 2
.globl	_$SDFDATA$_Ld32
_$SDFDATA$_Ld32:
	.short	0

.const_data
	.align 2
.globl	_INIT_SDFDATA_TFIXEDFORMATDATASET
_INIT_SDFDATA_TFIXEDFORMATDATASET:
	.byte	15,19
	.ascii	"TFixedFormatDataSet"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	352

.const_data
	.align 2
.globl	_RTTI_SDFDATA_TFIXEDFORMATDATASET
_RTTI_SDFDATA_TFIXEDFORMATDATASET:
	.byte	15,19
	.ascii	"TFixedFormatDataSet"
	.long	_VMT_SDFDATA_TFIXEDFORMATDATASET
	.long	_RTTI_DB_TDATASET
	.short	33
	.byte	7
	.ascii	"SdfData"
	.short	31
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	360
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETFILEMUSTEXIST$BOOLEAN
	.long	1,0,-2147483648
	.short	2
	.byte	52,13
	.ascii	"FileMustExist"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	361
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETREADONLY$BOOLEAN
	.long	1,0,-2147483648
	.short	3
	.byte	52,8
	.ascii	"ReadOnly"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	352
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETFILENAME$ANSISTRING
	.long	1,0,-2147483648
	.short	4
	.byte	52,8
	.ascii	"FileName"
	.long	_RTTI_CLASSES_TSTRINGLIST
	.long	348
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETSCHEMA$TSTRINGLIST
	.long	1,0,-2147483648
	.short	5
	.byte	52,6
	.ascii	"Schema"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	363
	.long	_SDFDATA_TFIXEDFORMATDATASET_$__SETTRIMSPACE$BOOLEAN
	.long	1,0,1
	.short	6
	.byte	52,9
	.ascii	"TrimSpace"
	.long	_RTTI_DB_TFIELDDEFS
	.long	268
	.long	_DB_TDATASET_$__SETFIELDDEFS$TFIELDDEFS
	.long	1,0,-2147483648
	.short	7
	.byte	52,9
	.ascii	"FieldDefs"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_DB_TDATASET_$__GETACTIVE$$BOOLEAN
	.long	440,1,0,0
	.short	8
	.byte	57,6
	.ascii	"Active"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	132,132,1,0,1
	.short	9
	.byte	48,14
	.ascii	"AutoCalcFields"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	280,456,1,0,0
	.short	10
	.byte	56,8
	.ascii	"Filtered"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	176,176,1,0,-2147483648
	.short	11
	.byte	48,10
	.ascii	"BeforeOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	100,100,1,0,-2147483648
	.short	12
	.byte	48,9
	.ascii	"AfterOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	144,144,1,0,-2147483648
	.short	13
	.byte	48,11
	.ascii	"BeforeClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	68,68,1,0,-2147483648
	.short	14
	.byte	48,10
	.ascii	"AfterClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	168,168,1,0,-2147483648
	.short	15
	.byte	48,12
	.ascii	"BeforeInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	92,92,1,0,-2147483648
	.short	16
	.byte	48,11
	.ascii	"AfterInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	160,160,1,0,-2147483648
	.short	17
	.byte	48,10
	.ascii	"BeforeEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	84,84,1,0,-2147483648
	.short	18
	.byte	48,9
	.ascii	"AfterEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	184,184,1,0,-2147483648
	.short	19
	.byte	48,10
	.ascii	"BeforePost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	108,108,1,0,-2147483648
	.short	20
	.byte	48,9
	.ascii	"AfterPost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	136,136,1,0,-2147483648
	.short	21
	.byte	48,12
	.ascii	"BeforeCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	60,60,1,0,-2147483648
	.short	22
	.byte	48,11
	.ascii	"AfterCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	152,152,1,0,-2147483648
	.short	23
	.byte	48,12
	.ascii	"BeforeDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	76,76,1,0,-2147483648
	.short	24
	.byte	48,11
	.ascii	"AfterDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	200,200,1,0,-2147483648
	.short	25
	.byte	48,12
	.ascii	"BeforeScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	124,124,1,0,-2147483648
	.short	26
	.byte	48,11
	.ascii	"AfterScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	284,284,1,0,-2147483648
	.short	27
	.byte	48,12
	.ascii	"OnCalcFields"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	292,292,1,0,-2147483648
	.short	28
	.byte	48,13
	.ascii	"OnDeleteError"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	300,300,1,0,-2147483648
	.short	29
	.byte	48,11
	.ascii	"OnEditError"
	.long	_RTTI_DB_TFILTERRECORDEVENT
	.long	308,476,1,0,-2147483648
	.short	30
	.byte	56,14
	.ascii	"OnFilterRecord"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	316,316,1,0,-2147483648
	.short	31
	.byte	48,11
	.ascii	"OnNewRecord"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	324,324,1,0,-2147483648
	.short	32
	.byte	48,11
	.ascii	"OnPostError"

.const_data
	.align 2
.globl	_INIT_SDFDATA_DEF280
_INIT_SDFDATA_DEF280:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SDFDATA_DEF281
_INIT_SDFDATA_DEF281:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$SDFDATA$_Ld34
_$SDFDATA$_Ld34:
	.short	0
	.long	_$SDFDATA$_Ld35
	.align 2
.globl	_$SDFDATA$_Ld35
_$SDFDATA$_Ld35:
	.short	0

.const_data
	.align 2
.globl	_INIT_SDFDATA_TSDFDATASET
_INIT_SDFDATA_TSDFDATASET:
	.byte	15,11
	.ascii	"TSdfDataSet"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SDFDATA_TSDFDATASET
_RTTI_SDFDATA_TSDFDATASET:
	.byte	15,11
	.ascii	"TSdfDataSet"
	.long	_VMT_SDFDATA_TSDFDATASET
	.long	_RTTI_SDFDATA_TFIXEDFORMATDATASET
	.short	36
	.byte	7
	.ascii	"SdfData"
	.short	3
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	406
	.long	_SDFDATA_TSDFDATASET_$__SETMULTILINE$BOOLEAN
	.long	1,0,1
	.short	33
	.byte	52,14
	.ascii	"AllowMultiLine"
	.long	_RTTI_SYSTEM_CHAR
	.long	404
	.long	_SDFDATA_TSDFDATASET_$__SETDELIMITER$CHAR
	.long	1,0,-2147483648
	.short	34
	.byte	52,9
	.ascii	"Delimiter"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	405
	.long	_SDFDATA_TSDFDATASET_$__SETFIRSTLINEASSCHEMA$BOOLEAN
	.long	1,0,-2147483648
	.short	35
	.byte	52,17
	.ascii	"FirstLineAsSchema"
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
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld1$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld3$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld5$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld7$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld9$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld11$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SNOTEDITING$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SNOTEDITING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld13$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SREADONLYFIELD$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SREADONLYFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld15$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld17$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_CR$non_lazy_ptr:
.indirect_symbol _TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_CR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_LF$non_lazy_ptr:
.indirect_symbol _TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_LF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE$non_lazy_ptr:
.indirect_symbol _TC_SDFDATA_TSDFDATASET_$_STORETOBUF$ANSISTRING$$ANSISTRING_QUOTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld19$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld20$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld22$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld24$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld26$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SDFDATA_TFIXEDFORMATDATASET$non_lazy_ptr:
.indirect_symbol _VMT_SDFDATA_TFIXEDFORMATDATASET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SDFDATA$_Ld28$non_lazy_ptr:
.indirect_symbol _$SDFDATA$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SDFDATA_TSDFDATASET$non_lazy_ptr:
.indirect_symbol _VMT_SDFDATA_TSDFDATASET
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

