# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_LANG_CONSTRUCTLANGNAME$LONGINT$LONGWORD$BOOLEAN$$ANSISTRING
_DBF_LANG_CONSTRUCTLANGNAME$LONGINT$LONGWORD$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE$stub
	movzbl	%al,%eax
	movl	L_TC_DBF_LANG_LANGID_TO_LOCALESTR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$65536,%eax
	jne	Lj16
	jmp	Lj17
Lj16:
	cmpb	$0,-12(%ebp)
	jne	Lj18
	jmp	Lj19
Lj18:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	L_$DBF_LANG$_Ld1$non_lazy_ptr-Lj4(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	cmpl	$1252,%eax
	je	Lj30
	jmp	Lj31
Lj30:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	L_$DBF_LANG$_Ld3$non_lazy_ptr-Lj4(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj38
Lj31:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj38:
	jmp	Lj49
Lj19:
	movl	-16(%ebp),%eax
	cmpl	$131072,%eax
	je	Lj50
	jmp	Lj51
Lj50:
	movl	L_$DBF_LANG$_Ld5$non_lazy_ptr-Lj4(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj54
Lj51:
	movl	L_$DBF_LANG$_Ld7$non_lazy_ptr-Lj4(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	movl	-4(%ebp),%eax
	cmpl	$1252,%eax
	je	Lj57
	jmp	Lj58
Lj57:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	L_$DBF_LANG$_Ld3$non_lazy_ptr-Lj4(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj65
Lj58:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj65:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj54:
Lj49:
Lj17:
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE
_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj90
	jmp	Lj91
Lj90:
	movb	$3,-13(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj96:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	shll	$1,%eax
	movl	L_TC_DBF_LANG_VFPCODEPAGE_LANGID$non_lazy_ptr-Lj87(%ebx),%edx
	movl	(%edx,%eax,4),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-4(%ebp),%ecx
	movl	$0,%esi
	cmpl	%esi,%eax
	jne	Lj98
	cmpl	%ecx,%edx
	jne	Lj98
	jmp	Lj97
Lj97:
	movl	-20(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	L_TC_DBF_LANG_VFPCODEPAGE_LANGID$non_lazy_ptr-Lj87(%ebx),%edx
	movb	(%edx,%eax,4),%al
	movb	%al,-13(%ebp)
	jmp	Lj95
Lj98:
	cmpl	$25,-20(%ebp)
	jl	Lj96
Lj95:
	jmp	Lj101
Lj91:
	movb	$0,-13(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj106:
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	addl	$2,%eax
	cmpl	$4,%eax
	jl	Lj107
	jmp	Lj108
Lj107:
	movl	-28(%ebp),%eax
	addl	$2,%eax
	movl	L_TC_DBF_LANG_DBASE_REGIONS$non_lazy_ptr-Lj87(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj109
	jmp	Lj110
Lj109:
	addl	$2,-28(%ebp)
Lj110:
Lj108:
	movl	-24(%ebp),%eax
	movl	L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr-Lj87(%ebx),%edx
	movzwl	(%edx,%eax,2),%eax
	cmpl	-4(%ebp),%eax
	je	Lj113
	jmp	Lj114
Lj114:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj113
	jmp	Lj112
Lj113:
	movl	-24(%ebp),%eax
	shll	$2,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj111
	jmp	Lj112
Lj111:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	L_TC_DBF_LANG_DBASE_REGIONS$non_lazy_ptr-Lj87(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	cmpl	-24(%ebp),%eax
	jge	Lj115
	jmp	Lj116
Lj115:
	movb	-24(%ebp),%al
	movb	%al,-13(%ebp)
Lj116:
Lj112:
	cmpl	$255,-24(%ebp)
	jl	Lj106
Lj101:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE
_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj120
Lj120:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%eax
	andl	$65535,%eax
	movl	%eax,-8(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj123
	jmp	Lj124
Lj123:
	movb	$1,(%esp)
	movl	L_TC_DBF_LANG_VFPCODEPAGE_LANGID$non_lazy_ptr-Lj120(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub
	movb	%al,-13(%ebp)
	jmp	Lj135
Lj124:
	movb	$0,(%esp)
	movl	L_TC_DBF_LANG_LANGID_TO_LOCALE$non_lazy_ptr-Lj120(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub
	movb	%al,-13(%ebp)
Lj135:
	movzbl	-13(%ebp),%eax
	testl	%eax,%eax
	je	Lj146
	jmp	Lj147
Lj146:
	cmpb	$0,-12(%ebp)
	jne	Lj148
	jmp	Lj149
Lj148:
	movb	$1,(%esp)
	movl	L_TC_DBF_LANG_VFPCODEPAGE_LANGID$non_lazy_ptr-Lj120(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub
	movb	%al,-13(%ebp)
	jmp	Lj160
Lj149:
	movb	$0,(%esp)
	movl	L_TC_DBF_LANG_LANGID_TO_LOCALE$non_lazy_ptr-Lj120(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub
	movb	%al,-13(%ebp)
	movzbl	-13(%ebp),%eax
	testl	%eax,%eax
	je	Lj171
	jmp	Lj172
Lj171:
	movb	$1,(%esp)
	movl	L_TC_DBF_LANG_VFPCODEPAGE_LANGID$non_lazy_ptr-Lj120(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub
	movb	%al,-13(%ebp)
Lj172:
Lj160:
Lj147:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE
_DBF_LANG_GETLANGID_FROM_LANGNAME$ANSISTRING$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj184
Lj184:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj185
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj192
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj184(%ebx),%eax
	movl	%eax,%edx
Lj192:
	movl	L_$DBF_LANG$_Ld9$non_lazy_ptr-Lj184(%ebx),%eax
	movl	$3,%ecx
	call	L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj197
	jmp	Lj198
Lj197:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	$6,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-4(%ebp),%eax
	movzbl	4(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbl	3(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj209
Lj198:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	$3,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-4(%ebp),%eax
	movzbl	6(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbl	5(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	7(%edx),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj209:
	movl	-24(%ebp),%eax
	movl	L_$DBF_LANG$_Ld3$non_lazy_ptr-Lj184(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj220
	jmp	Lj221
Lj220:
	movl	$1252,-12(%ebp)
	jmp	Lj228
Lj221:
	movl	-24(%ebp),%eax
	movl	L_$DBF_LANG$_Ld10$non_lazy_ptr-Lj184(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj229
	jmp	Lj230
Lj229:
	movl	$1255,-12(%ebp)
	jmp	Lj237
Lj230:
	movl	-24(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj237:
Lj228:
	movb	-17(%ebp),%al
	movb	%al,(%esp)
	movl	L_TC_DBF_LANG_LANGID_TO_LOCALESTR$non_lazy_ptr-Lj184(%ebx),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub
	movb	%al,-5(%ebp)
Lj185:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj186
	call	LFPC_RERAISE$stub
Lj186:
	movb	-5(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_DBF_LANG
_THREADVARLIST_DBF_LANG:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 1
.globl	_TC_DBF_LANG_LANGID_TO_CODEPAGE
_TC_DBF_LANG_LANGID_TO_CODEPAGE:
	.short	0,437,850,1252,10000,0,0,0,865,437,850,437,850,437,850,437,850,437,850,932,850,437,850,865,437,437
	.short	850,437,863,850,0,852,867,0,852,852,860,850,866,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.short	0,0,0,0,936,949,950,874,0,0,0,0,0,932,1252,1252,1252,0,0,0,0,437,437,850,1252,1252,0,852,866,865,861,895
	.short	620,737,857,0,0,0,0,0,0,0,0,0,0,0,0,950,949,936,932,874,1255,1256,0,0,0,0,0,0,862,437,852,857,0,0,0,0,0,868,0
	.short	0,0,0,0,0,0,10007,10029,10006,0,0,1250,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.short	0,0,1250,1251,1254,1253,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_DBF_LANG_LANGID_TO_LOCALE
_TC_DBF_LANG_LANGID_TO_LOCALE:
	.long	65536,1033,2057,2057,2057,0,0,0,1030,1043,1043,1035,1035,1036,1036,1031,1031,1040,1040,1041
	.long	1034,1053,1053,1044,1034,2057,2057,1033,3084,3084,0,1029,0,0,1038,1045,1046,1046,1049,0,0,0,0
	.long	0,0,0,0,0,0,0,0,0,0,0,0,1033,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2052,1042,1028,1054,0,0,0,0,0,1041,0,2057,1034
	.long	0,0,0,0,1031,1044,1044,1031,1044,0,1029,1049,1044,1039,1029,1045,1032,1055,0,0,0,0,0,0,0,0,0,0,0,0,3076
	.long	1042,135172,1041,1054,1037,1025,0,0,0,0,0,0,1037,1032,1051,1055,0,0,0,0,0,1026,0,0,0,0,0,0,0,1049,1029
	.long	1032,0,0,1029,1029,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1029,1049,1055,1032
	.long	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_DBF_LANG_VFPCODEPAGE_LANGID
_TC_DBF_LANG_VFPCODEPAGE_LANGID:
	.long	437,1,620,105,737,106,850,2,852,100,857,107,861,103,865,102,866,100,874,124,895,104,932,123,936
	.long	122,949,121,950,120,1250,200,1251,201,1252,3,1253,203,1254,202,1255,125,1256,126,10000,4,10006
	.long	152,10007,150,10029,151

.data
	.align 2
.globl	_TC_DBF_LANG_LANGID_TO_LOCALESTR
_TC_DBF_LANG_LANGID_TO_LOCALESTR:
	.long	65536,3167061,3165013,3165013,3165013,0,0,0,3162436,3165262,3165262,3164486,3164486
	.long	3166790,3166790,3163460,3163460,3167305,3232841,3166282,3167045,3167827,3233363,3166030
	.long	3232581,3165013,3165013,3167061,3229251,3229251,0,3168835,3168835,0,4408392,3166032
	.long	3167312,3167312,3167570,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3167061,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3165763
	.long	3166027,3168084,3164244,0,0,0,0,0,3231818,3167061,3163479,3167045,0,0,0,0,17732,20302,20302
	.long	17732,20302,0,3168835,3167570,20302,3162953,3168835,3231568,3166791,3166804,0,0,0,0,0,0
	.long	0,0,0,0,0,0,3164227,3166027,3167043,3166282,3164244,5719378,3166785,0,0,0,0,0,0,5719378,3166791
	.long	3165267,3166804,0,0,0,0,0,131072,0,0,0,0,0,0,0,3167570,3168835,3166791,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3168835,3167570,3166804,3166791,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$DBF_LANG$_Ld2
_$DBF_LANG$_Ld2:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_LANG$_Ld1
.globl	_$DBF_LANG$_Ld1
_$DBF_LANG$_Ld1:
.reference _$DBF_LANG$_Ld2
	.ascii	"FOX\000"

.const_data
	.align 2
.globl	_$DBF_LANG$_Ld4
_$DBF_LANG$_Ld4:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_LANG$_Ld3
.globl	_$DBF_LANG$_Ld3
_$DBF_LANG$_Ld3:
.reference _$DBF_LANG$_Ld4
	.ascii	"WIN\000"

.const_data
	.align 2
.globl	_$DBF_LANG$_Ld6
_$DBF_LANG$_Ld6:
	.short	0,1
	.long	0,-1,7
.reference _$DBF_LANG$_Ld5
.globl	_$DBF_LANG$_Ld5
_$DBF_LANG$_Ld5:
.reference _$DBF_LANG$_Ld6
	.ascii	"BGDB868\000"

.const_data
	.align 2
.globl	_$DBF_LANG$_Ld8
_$DBF_LANG$_Ld8:
	.short	0,1
	.long	0,-1,2
.reference _$DBF_LANG$_Ld7
.globl	_$DBF_LANG$_Ld7
_$DBF_LANG$_Ld7:
.reference _$DBF_LANG$_Ld8
	.ascii	"DB\000"

.data
.globl	_TC_DBF_LANG_DBASE_REGIONS
_TC_DBF_LANG_DBASE_REGIONS:
	.byte	0,0,5,93,105,105,128,144

.const
	.align 2
.globl	_$DBF_LANG$_Ld9
_$DBF_LANG$_Ld9:
	.ascii	"FOX\000"

.const_data
	.align 2
.globl	_$DBF_LANG$_Ld11
_$DBF_LANG$_Ld11:
	.short	0,1
	.long	0,-1,3
.reference _$DBF_LANG$_Ld10
.globl	_$DBF_LANG$_Ld10
_$DBF_LANG$_Ld10:
.reference _$DBF_LANG$_Ld11
	.ascii	"REW\000"
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

L_DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE$stub:
.indirect_symbol _DBF_LANG_CONSTRUCTLANGID$LONGINT$LONGWORD$BOOLEAN$$BYTE
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

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
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

L_DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE$stub:
.indirect_symbol _DBF_LANG_FINDLANGID$LONGWORD$LONGWORD$PCARDINAL$BOOLEAN$$BYTE
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

L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN
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

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
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
L_TC_DBF_LANG_LANGID_TO_LOCALESTR$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_LANGID_TO_LOCALESTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_LANG$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_LANG$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_LANG$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_LANG$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_LANG$_Ld5$non_lazy_ptr:
.indirect_symbol _$DBF_LANG$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_LANG$_Ld7$non_lazy_ptr:
.indirect_symbol _$DBF_LANG$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_LANG_VFPCODEPAGE_LANGID$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_VFPCODEPAGE_LANGID
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_LANG_DBASE_REGIONS$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_DBASE_REGIONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_LANG_LANGID_TO_CODEPAGE$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_LANGID_TO_CODEPAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_LANG_LANGID_TO_LOCALE$non_lazy_ptr:
.indirect_symbol _TC_DBF_LANG_LANGID_TO_LOCALE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_LANG$_Ld9$non_lazy_ptr:
.indirect_symbol _$DBF_LANG$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_LANG$_Ld10$non_lazy_ptr:
.indirect_symbol _$DBF_LANG$_Ld10
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

