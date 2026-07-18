# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CHARSET_LOADUNICODEMAPPING$SHORTSTRING$SHORTSTRING$$PUNICODEMAP
_CHARSET_LOADUNICODEMAPPING$SHORTSTRING$SHORTSTRING$$PUNICODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1432,%esp
	movl	%ebx,-1420(%ebp)
	movl	%esi,-1416(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$-1,-1156(%ebp)
	movl	$0,-12(%ebp)
	movl	$256,-20(%ebp)
	movl	-20(%ebp),%edx
	imull	$12,%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%edx
	leal	-616(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leal	-616(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj21
	jmp	Lj22
Lj21:
	movl	-20(%ebp),%edx
	imull	$12,%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	jmp	Lj3
Lj22:
	jmp	Lj28
	.align 2
Lj27:
	leal	-872(%ebp),%edx
	leal	-616(%ebp),%eax
	movl	$255,%ecx
	call	Lfpc_read_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-616(%ebp),%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	movb	-871(%ebp),%al
	cmpb	$48,%al
	je	Lj40
	jmp	Lj39
Lj40:
	movb	-870(%ebp),%al
	cmpb	$120,%al
	je	Lj38
	jmp	Lj39
Lj38:
	movl	$3,-1148(%ebp)
	movl	$3,-1132(%ebp)
	movw	$9217,-1128(%ebp)
	jmp	Lj48
	.align 2
Lj47:
	movzbl	-1132(%ebp),%eax
	movzbl	-872(%ebp,%eax,1),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-1412(%ebp)
	leal	-1412(%ebp),%eax
	movl	%eax,(%esp)
	leal	-1128(%ebp),%ecx
	leal	-1128(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	incl	-1132(%ebp)
Lj48:
	movzbl	-1132(%ebp),%eax
	movzbl	-872(%ebp,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj58
	subl	$17,%eax
	cmpl	$6,%eax
	jb	Lj58
	subl	$32,%eax
	cmpl	$6,%eax
	jb	Lj58
Lj58:
	jc	Lj47
	jmp	Lj49
Lj49:
	leal	-1160(%ebp),%ecx
	leal	-1128(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_shortstr$stub
	movl	%eax,-1136(%ebp)
	movw	-1160(%ebp),%ax
	movw	%ax,-1142(%ebp)
	movzwl	-1142(%ebp),%eax
	testl	%eax,%eax
	jne	Lj69
	jmp	Lj70
Lj69:
	movl	-20(%ebp),%edx
	imull	$12,%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	leal	-616(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3
Lj70:
	jmp	Lj78
	.align 2
Lj77:
	incl	-1132(%ebp)
Lj78:
	movzbl	-1132(%ebp),%eax
	movzbl	-872(%ebp,%eax,1),%eax
	cmpl	$35,%eax
	je	Lj80
	cmpl	$48,%eax
	je	Lj80
Lj80:
	je	Lj79
	jmp	Lj77
Lj79:
	movzbl	-1132(%ebp),%eax
	movb	-872(%ebp,%eax,1),%al
	cmpb	$35,%al
	je	Lj81
	jmp	Lj82
Lj81:
	movl	$65535,-1140(%ebp)
	leal	-1412(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-872(%ebp),%ecx
	movl	-1132(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-1132(%ebp),%edx
	leal	-872(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-1412(%ebp),%ecx
	leal	-1128(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-1128(%ebp),%eax
	movl	L_$CHARSET$_Ld1$non_lazy_ptr-Lj4(%esi),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj99
	jmp	Lj100
Lj99:
	movl	$1,-1148(%ebp)
Lj100:
	jmp	Lj107
Lj82:
	addl	$2,-1132(%ebp)
	movw	$9217,-1128(%ebp)
	jmp	Lj111
	.align 2
Lj110:
	movzbl	-1132(%ebp),%eax
	movzbl	-872(%ebp,%eax,1),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-1412(%ebp)
	leal	-1412(%ebp),%eax
	movl	%eax,(%esp)
	leal	-1128(%ebp),%ecx
	leal	-1128(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	incl	-1132(%ebp)
Lj111:
	movzbl	-1132(%ebp),%eax
	movzbl	-872(%ebp,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj121
	subl	$17,%eax
	cmpl	$6,%eax
	jb	Lj121
	subl	$32,%eax
	cmpl	$6,%eax
	jb	Lj121
Lj121:
	jc	Lj110
	jmp	Lj112
Lj112:
	leal	-1160(%ebp),%ecx
	leal	-1128(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_shortstr$stub
	movl	%eax,-1140(%ebp)
	movw	-1160(%ebp),%ax
	movw	%ax,-1142(%ebp)
	movzwl	-1142(%ebp),%eax
	testl	%eax,%eax
	jne	Lj132
	jmp	Lj133
Lj132:
	movl	-20(%ebp),%edx
	imull	$12,%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	leal	-616(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj3
Lj133:
	movl	-1136(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj140
	jmp	Lj141
Lj140:
	movl	-1136(%ebp),%eax
	addl	$1024,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	imull	$12,%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj141:
	movl	$0,-1148(%ebp)
Lj107:
	movl	-16(%ebp),%ecx
	movl	-1136(%ebp),%eax
	imull	$12,%eax
	movl	-1148(%ebp),%edx
	movl	%edx,4(%ecx,%eax)
	movl	-16(%ebp),%ecx
	movl	-1136(%ebp),%eax
	imull	$12,%eax
	movw	-1140(%ebp),%dx
	movw	%dx,(%ecx,%eax)
	movl	-1136(%ebp),%eax
	cmpl	-1156(%ebp),%eax
	jg	Lj154
	jmp	Lj155
Lj154:
	movl	-1136(%ebp),%eax
	movl	%eax,-1156(%ebp)
Lj155:
Lj39:
Lj28:
	leal	-616(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	testb	%bl,%bl
	jne	Lj29
	jmp	Lj27
Lj29:
	leal	-616(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	$40,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-1152(%ebp)
	movl	-1152(%ebp),%edx
	movl	-1156(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-1152(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	$20,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-1152(%ebp),%eax
	movb	$0,36(%eax)
	movl	-1152(%ebp),%eax
	movl	$0,32(%eax)
	movl	-1152(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-1152(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj3:
	movl	-12(%ebp),%eax
	movl	-1420(%ebp),%ebx
	movl	-1416(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CHARSET_REGISTERMAPPING$PUNICODEMAP
_CHARSET_REGISTERMAPPING$PUNICODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj185
Lj185:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj185(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,32(%ecx)
	movl	-4(%ebp),%eax
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj185(%edx),%ecx
	movl	%eax,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP
_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj191
Lj191:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHE$non_lazy_ptr-Lj191(%ebx),%eax
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj195
	jmp	Lj193
Lj195:
	movl	L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP$non_lazy_ptr-Lj191(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj194
	jmp	Lj193
Lj194:
	movl	L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP$non_lazy_ptr-Lj191(%ebx),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj192
	jmp	Lj193
Lj192:
	movl	L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP$non_lazy_ptr-Lj191(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj190
Lj193:
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj191(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj209
	.align 2
Lj208:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj211
	jmp	Lj212
Lj211:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHE$non_lazy_ptr-Lj191(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-12(%ebp),%eax
	movl	L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP$non_lazy_ptr-Lj191(%ebx),%edx
	movl	%eax,(%edx)
	jmp	Lj190
Lj212:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
Lj209:
	cmpl	$0,-12(%ebp)
	jne	Lj208
	jmp	Lj210
Lj210:
	movl	$0,-8(%ebp)
Lj190:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CHARSET_MAPPINGAVAILABLE$SHORTSTRING$$BOOLEAN
_CHARSET_MAPPINGAVAILABLE$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP$stub
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CHARSET_GETUNICODE$CHAR$PUNICODEMAP$$WORD
_CHARSET_GETUNICODE$CHAR$PUNICODEMAP$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	cmpl	28(%edx),%eax
	jle	Lj239
	jmp	Lj240
Lj239:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movzbl	-4(%ebp),%eax
	imull	$12,%eax
	movw	(%edx,%eax),%ax
	movw	%ax,-10(%ebp)
	jmp	Lj243
Lj240:
	movw	$0,-10(%ebp)
Lj243:
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_CHARSET_GETASCII$WORD$PUNICODEMAP$$SHORTSTRING
_CHARSET_GETASCII$WORD$PUNICODEMAP$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-532(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movw	$8193,(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj251
	decl	-16(%ebp)
	.align 2
Lj252:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-16(%ebp),%eax
	imull	$12,%eax
	movw	(%edx,%eax),%ax
	cmpw	-4(%ebp),%ax
	je	Lj253
	jmp	Lj254
Lj253:
	movl	-16(%ebp),%eax
	cmpl	$256,%eax
	jl	Lj255
	jmp	Lj256
Lj255:
	movl	-12(%ebp),%eax
	movb	$1,(%eax)
	movb	-16(%ebp),%dl
	movb	%dl,1(%eax)
	jmp	Lj259
Lj256:
	movl	-16(%ebp),%eax
	cltd
	movl	$256,%ecx
	idivl	%ecx
	movzbl	%dl,%edx
	shll	$8,%edx
	orl	$1,%edx
	movw	%dx,-272(%ebp)
	leal	-272(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$255,%eax
	addl	%eax,%edx
	sarl	$8,%edx
	movzbl	%dl,%edx
	shll	$8,%edx
	orl	$1,%edx
	movw	%dx,-528(%ebp)
	leal	-528(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj259:
	jmp	Lj246
Lj254:
	cmpl	-16(%ebp),%ebx
	jg	Lj252
Lj251:
Lj246:
	movl	-532(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_CHARSET
_INIT$_CHARSET:
.reference __CHARSET_init
.globl	__CHARSET_init
__CHARSET_init:
.reference _INIT$_CHARSET
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%edx
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj2(%edx),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_CHARSET
_FINALIZE$_CHARSET:
.reference __CHARSET_finalize
.globl	__CHARSET_finalize
__CHARSET_finalize:
.reference _FINALIZE$_CHARSET
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj269
Lj269:
	popl	%ebx
	jmp	Lj273
	.align 2
Lj272:
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj269(%ebx),%eax
	movl	(%eax),%eax
	movl	32(%eax),%edx
	movl	L_U_CHARSET_HP$non_lazy_ptr-Lj269(%ebx),%eax
	movl	%edx,(%eax)
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj269(%ebx),%eax
	movl	(%eax),%eax
	movb	36(%eax),%al
	testb	%al,%al
	je	Lj277
	jmp	Lj278
Lj277:
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj269(%ebx),%eax
	movl	(%eax),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj269(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_freemem$stub
Lj278:
	movl	L_U_CHARSET_HP$non_lazy_ptr-Lj269(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj269(%ebx),%edx
	movl	%eax,(%edx)
Lj273:
	movl	L_U_CHARSET_MAPPINGS$non_lazy_ptr-Lj269(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj272
	jmp	Lj274
Lj274:
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_CHARSET_MAPPINGS
.data
.zerofill __DATA, __common, _U_CHARSET_MAPPINGS, 4,2




	.align 2
.globl _U_CHARSET_HP
.data
.zerofill __DATA, __common, _U_CHARSET_HP, 4,2



.const_data
	.align 2
.globl	_$CHARSET$_Ld2
_$CHARSET$_Ld2:
	.byte	10
	.ascii	"tcsconvert"

.const_data
	.align 2
.globl	_VMT_CHARSET_TCSCONVERT
_VMT_CHARSET_TCSCONVERT:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$CHARSET$_Ld2
	.long	0,0
	.long	_$CHARSET$_Ld3
	.long	_RTTI_CHARSET_TCSCONVERT
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
.globl	_$CHARSET$_Ld5
_$CHARSET$_Ld5:
	.byte	11
	.ascii	"tcp2unicode"

.const_data
	.align 2
.globl	_VMT_CHARSET_TCP2UNICODE
_VMT_CHARSET_TCP2UNICODE:
	.long	4,-4
	.long	_VMT_CHARSET_TCSCONVERT
	.long	_$CHARSET$_Ld5
	.long	0,0
	.long	_$CHARSET$_Ld6
	.long	_RTTI_CHARSET_TCP2UNICODE
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
.globl	_THREADVARLIST_CHARSET
_THREADVARLIST_CHARSET:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$CHARSET$_Ld1
_$CHARSET$_Ld1:
	.ascii	"\017#DBCS LEAD BYTE\000"

.data
.globl	_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHE
_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHE:
	.byte	0
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "

.data
	.align 2
.globl	_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP
_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP:
	.long	0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RESET$TEXT$stub:
.indirect_symbol _SYSTEM_RESET$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_IORESULT$$WORD$stub:
.indirect_symbol _SYSTEM_IORESULT$$WORD
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

Lfpc_read_text_shortstr$stub:
.indirect_symbol fpc_read_text_shortstr
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

Lfpc_readln_end$stub:
.indirect_symbol fpc_readln_end
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

Lfpc_val_sint_shortstr$stub:
.indirect_symbol fpc_val_sint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$TEXT$stub:
.indirect_symbol _SYSTEM_CLOSE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
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

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
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

L_SYSTEM_EOF$TEXT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_EOF$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP$stub:
.indirect_symbol _CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
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
.globl	_INIT_CHARSET_TUNICODESTRING
_INIT_CHARSET_TUNICODESTRING:
	.byte	0
	.ascii	"\016tunicodestring"

.const_data
	.align 2
.globl	_RTTI_CHARSET_TUNICODESTRING
_RTTI_CHARSET_TUNICODESTRING:
	.byte	0
	.ascii	"\016tunicodestring"

.const_data
	.align 2
.globl	_$CHARSET$_Ld3
_$CHARSET$_Ld3:
	.short	0
	.long	_$CHARSET$_Ld4
	.align 2
.globl	_$CHARSET$_Ld4
_$CHARSET$_Ld4:
	.short	0

.const_data
	.align 2
.globl	_INIT_CHARSET_TCSCONVERT
_INIT_CHARSET_TCSCONVERT:
	.byte	15,10
	.ascii	"tcsconvert"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CHARSET_TCSCONVERT
_RTTI_CHARSET_TCSCONVERT:
	.byte	15,10
	.ascii	"tcsconvert"
	.long	_VMT_CHARSET_TCSCONVERT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"charset"
	.short	0

.const_data
	.align 2
.globl	_INIT_CHARSET_TUNICODECHARMAPPINGFLAG
_INIT_CHARSET_TUNICODECHARMAPPINGFLAG:
	.byte	3,23
	.ascii	"tunicodecharmappingflag"
	.byte	5
	.long	0,3,0
	.byte	10
	.ascii	"umf_noinfo"
	.byte	12
	.ascii	"umf_leadbyte"
	.byte	13
	.ascii	"umf_undefined"
	.byte	10
	.ascii	"umf_unused"
	.byte	7
	.ascii	"charset"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG
_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG:
	.byte	3,23
	.ascii	"tunicodecharmappingflag"
	.byte	5
	.long	0,3,0
	.byte	10
	.ascii	"umf_noinfo"
	.byte	12
	.ascii	"umf_leadbyte"
	.byte	13
	.ascii	"umf_undefined"
	.byte	10
	.ascii	"umf_unused"
	.byte	7
	.ascii	"charset"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG_s2o
_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG_s2o:
	.long	4,1
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+49
	.long	0
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+38
	.long	2
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+62
	.long	3
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+76

.const_data
	.align 2
.globl	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG_o2s
_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG_o2s:
	.long	0
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+38
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+49
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+62
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG+76

.const_data
	.align 2
.globl	_INIT_CHARSET_PUNICODECHARMAPPING
_INIT_CHARSET_PUNICODECHARMAPPING:
	.byte	0
	.ascii	"\023punicodecharmapping"

.const_data
	.align 2
.globl	_RTTI_CHARSET_PUNICODECHARMAPPING
_RTTI_CHARSET_PUNICODECHARMAPPING:
	.byte	0
	.ascii	"\023punicodecharmapping"

.const_data
	.align 2
.globl	_INIT_CHARSET_TUNICODECHARMAPPING
_INIT_CHARSET_TUNICODECHARMAPPING:
	.byte	13,19
	.ascii	"tunicodecharmapping"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_CHARSET_TUNICODECHARMAPPING
_RTTI_CHARSET_TUNICODECHARMAPPING:
	.byte	13,19
	.ascii	"tunicodecharmapping"
	.long	12,3
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_CHARSET_TUNICODECHARMAPPINGFLAG
	.long	4
	.long	_RTTI_SYSTEM_BYTE
	.long	8

.const_data
	.align 2
.globl	_INIT_CHARSET_PUNICODEMAP
_INIT_CHARSET_PUNICODEMAP:
	.byte	0
	.ascii	"\013punicodemap"

.const_data
	.align 2
.globl	_RTTI_CHARSET_PUNICODEMAP
_RTTI_CHARSET_PUNICODEMAP:
	.byte	0
	.ascii	"\013punicodemap"

.const_data
	.align 2
.globl	_INIT_CHARSET_TUNICODEMAP
_INIT_CHARSET_TUNICODEMAP:
	.byte	13,11
	.ascii	"tunicodemap"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_CHARSET_DEF7
_RTTI_CHARSET_DEF7:
	.byte	7
	.ascii	"\000"
	.byte	20

.const_data
	.align 2
.globl	_RTTI_CHARSET_TUNICODEMAP
_RTTI_CHARSET_TUNICODEMAP:
	.byte	13,11
	.ascii	"tunicodemap"
	.long	40,5
	.long	_RTTI_CHARSET_DEF7
	.long	0
	.long	_RTTI_CHARSET_PUNICODECHARMAPPING
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_CHARSET_PUNICODEMAP
	.long	32
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	36

.const_data
	.align 2
.globl	_$CHARSET$_Ld6
_$CHARSET$_Ld6:
	.short	0
	.long	_$CHARSET$_Ld7
	.align 2
.globl	_$CHARSET$_Ld7
_$CHARSET$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_CHARSET_TCP2UNICODE
_INIT_CHARSET_TCP2UNICODE:
	.byte	15,11
	.ascii	"tcp2unicode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CHARSET_TCP2UNICODE
_RTTI_CHARSET_TCP2UNICODE:
	.byte	15,11
	.ascii	"tcp2unicode"
	.long	_VMT_CHARSET_TCP2UNICODE
	.long	_RTTI_CHARSET_TCSCONVERT
	.short	0
	.byte	7
	.ascii	"charset"
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
L_$CHARSET$_Ld1$non_lazy_ptr:
.indirect_symbol _$CHARSET$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CHARSET_MAPPINGS$non_lazy_ptr:
.indirect_symbol _U_CHARSET_MAPPINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHE$non_lazy_ptr:
.indirect_symbol _TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP$non_lazy_ptr:
.indirect_symbol _TC_CHARSET_GETMAP$SHORTSTRING$$PUNICODEMAP_MAPCACHEP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CHARSET_HP$non_lazy_ptr:
.indirect_symbol _U_CHARSET_HP
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

