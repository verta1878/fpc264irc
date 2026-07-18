# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_INIT$_DBF_STR
_INIT$_DBF_STR:
.reference __DBF_STR_init
.globl	__DBF_STR_init
__DBF_STR_init:
.reference _INIT$_DBF_STR
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	call	Lj2
Lj2:
	popl	%esi
	movl	L_$DBF_STR$_Ld1$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld3$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_VERSION$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_VERSION$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld5$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld7$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld9$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld11$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld13$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld15$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld17$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_FIELD_TOO_LONG$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_FIELD_TOO_LONG$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld19$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld21$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld23$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld25$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld27$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld29$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld31$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld33$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_CANNOT_OPEN_INDEX$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_CANNOT_OPEN_INDEX$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld35$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld37$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	L_$DBF_STR$_Ld39$non_lazy_ptr-Lj2(%esi),%ebx
	movl	L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr-Lj2(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr-Lj2(%esi),%eax
	movl	%ebx,(%eax)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DBF_STR
_FINALIZE$_DBF_STR:
.reference __DBF_STR_finalize_implicit
.globl	__DBF_STR_finalize_implicit
__DBF_STR_finalize_implicit:
.reference _FINALIZE$_DBF_STR
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_VERSION$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_VERSION$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_FIELD_TOO_LONG$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_FIELD_TOO_LONG$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_CANNOT_OPEN_INDEX$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_CANNOT_OPEN_INDEX$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_DBF_STR_STRING_FILE_NOT_FOUND
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_FILE_NOT_FOUND, 4,2




	.align 2
.globl _U_DBF_STR_STRING_VERSION
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_VERSION, 4,2




	.align 2
.globl _U_DBF_STR_STRING_RECORD_LOCKED
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_RECORD_LOCKED, 4,2




	.align 2
.globl _U_DBF_STR_STRING_WRITE_ERROR
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_WRITE_ERROR, 4,2




	.align 2
.globl _U_DBF_STR_STRING_WRITE_INDEX_ERROR
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_WRITE_INDEX_ERROR, 4,2




	.align 2
.globl _U_DBF_STR_STRING_KEY_VIOLATION
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_KEY_VIOLATION, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INVALID_DBF_FILE
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INVALID_DBF_FILE, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR, 4,2




	.align 2
.globl _U_DBF_STR_STRING_FIELD_TOO_LONG
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_FIELD_TOO_LONG, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INVALID_FIELD_COUNT
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INVALID_FIELD_COUNT, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INVALID_FIELD_TYPE
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INVALID_FIELD_TYPE, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INVALID_INDEX_TYPE
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INVALID_INDEX_TYPE, 4,2




	.align 2
.globl _U_DBF_STR_STRING_CANNOT_OPEN_INDEX
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_CANNOT_OPEN_INDEX, 4,2




	.align 2
.globl _U_DBF_STR_STRING_TOO_MANY_INDEXES
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_TOO_MANY_INDEXES, 4,2




	.align 2
.globl _U_DBF_STR_STRING_INDEX_NOT_EXIST
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_INDEX_NOT_EXIST, 4,2




	.align 2
.globl _U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS
.data
.zerofill __DATA, __common, _U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS, 4,2



.data
	.align 2
.globl	_THREADVARLIST_DBF_STR
_THREADVARLIST_DBF_STR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DBF_STR$_Ld2
_$DBF_STR$_Ld2:
	.short	0,1
	.long	0,-1,27
.reference _$DBF_STR$_Ld1
.globl	_$DBF_STR$_Ld1
_$DBF_STR$_Ld1:
.reference _$DBF_STR$_Ld2
	.ascii	"Open: file not found: \"%s\".\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld4
_$DBF_STR$_Ld4:
	.short	0,1
	.long	0,-1,11
.reference _$DBF_STR$_Ld3
.globl	_$DBF_STR$_Ld3
_$DBF_STR$_Ld3:
.reference _$DBF_STR$_Ld4
	.ascii	"TDbf V%d.%d\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld6
_$DBF_STR$_Ld6:
	.short	0,1
	.long	0,-1,14
.reference _$DBF_STR$_Ld5
.globl	_$DBF_STR$_Ld5
_$DBF_STR$_Ld5:
.reference _$DBF_STR$_Ld6
	.ascii	"Record locked.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld8
_$DBF_STR$_Ld8:
	.short	0,1
	.long	0,-1,42
.reference _$DBF_STR$_Ld7
.globl	_$DBF_STR$_Ld7
_$DBF_STR$_Ld7:
.reference _$DBF_STR$_Ld8
	.ascii	"Error while writing occurred. (Disk full?)\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld10
_$DBF_STR$_Ld10:
	.short	0,1
	.long	0,-1,70
.reference _$DBF_STR$_Ld9
.globl	_$DBF_STR$_Ld9
_$DBF_STR$_Ld9:
.reference _$DBF_STR$_Ld10
	.ascii	"Error while writing occurred; indexes probably corr"
	.ascii	"upted. (Disk full?)\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld12
_$DBF_STR$_Ld12:
	.short	0,1
	.long	0,-1,77
.reference _$DBF_STR$_Ld11
.globl	_$DBF_STR$_Ld11
_$DBF_STR$_Ld11:
.reference _$DBF_STR$_Ld12
	.ascii	"Key violation. (Key already present in file).\015\012"
	.ascii	"Index: %s\015\012Record=%d Key='%s'.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld14
_$DBF_STR$_Ld14:
	.short	0,1
	.long	0,-1,17
.reference _$DBF_STR$_Ld13
.globl	_$DBF_STR$_Ld13
_$DBF_STR$_Ld13:
.reference _$DBF_STR$_Ld14
	.ascii	"Invalid DBF file.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld16
_$DBF_STR$_Ld16:
	.short	0,1
	.long	0,-1,43
.reference _$DBF_STR$_Ld15
.globl	_$DBF_STR$_Ld15
_$DBF_STR$_Ld15:
.reference _$DBF_STR$_Ld16
	.ascii	"Invalid DBF file. Invalid field definition.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld18
_$DBF_STR$_Ld18:
	.short	0,1
	.long	0,-1,60
.reference _$DBF_STR$_Ld17
.globl	_$DBF_STR$_Ld17
_$DBF_STR$_Ld17:
.reference _$DBF_STR$_Ld18
	.ascii	"Value is too long: %d characters (it can't be more "
	.ascii	"than %d).\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld20
_$DBF_STR$_Ld20:
	.short	0,1
	.long	0,-1,53
.reference _$DBF_STR$_Ld19
.globl	_$DBF_STR$_Ld19
_$DBF_STR$_Ld19:
.reference _$DBF_STR$_Ld20
	.ascii	"Invalid field count: %d (must be between 1 and 4095"
	.ascii	").\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld22
_$DBF_STR$_Ld22:
	.short	0,1
	.long	0,-1,39
.reference _$DBF_STR$_Ld21
.globl	_$DBF_STR$_Ld21
_$DBF_STR$_Ld21:
.reference _$DBF_STR$_Ld22
	.ascii	"Invalid field type '%s' for field '%s'.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld24
_$DBF_STR$_Ld24:
	.short	0,1
	.long	0,-1,65
.reference _$DBF_STR$_Ld23
.globl	_$DBF_STR$_Ld23
_$DBF_STR$_Ld23:
.reference _$DBF_STR$_Ld24
	.ascii	"Cannot create field \"%s\", VCL field type %x not s"
	.ascii	"upported by DBF.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld26
_$DBF_STR$_Ld26:
	.short	0,1
	.long	0,-1,34
.reference _$DBF_STR$_Ld25
.globl	_$DBF_STR$_Ld25
_$DBF_STR$_Ld25:
.reference _$DBF_STR$_Ld26
	.ascii	"Index based on unknown field \"%s\".\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld28
_$DBF_STR$_Ld28:
	.short	0,1
	.long	0,-1,53
.reference _$DBF_STR$_Ld27
.globl	_$DBF_STR$_Ld27
_$DBF_STR$_Ld27:
.reference _$DBF_STR$_Ld28
	.ascii	"Field \"%s\" is an invalid field type to base index"
	.ascii	" on.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld30
_$DBF_STR$_Ld30:
	.short	0,1
	.long	0,-1,53
.reference _$DBF_STR$_Ld29
.globl	_$DBF_STR$_Ld29
_$DBF_STR$_Ld29:
.reference _$DBF_STR$_Ld30
	.ascii	"Index result for \"%s\" too long, >100 characters ("
	.ascii	"%d).\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld32
_$DBF_STR$_Ld32:
	.short	0,1
	.long	0,-1,48
.reference _$DBF_STR$_Ld31
.globl	_$DBF_STR$_Ld31
_$DBF_STR$_Ld31:
.reference _$DBF_STR$_Ld32
	.ascii	"Invalid index type: can only be string or float.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld34
_$DBF_STR$_Ld34:
	.short	0,1
	.long	0,-1,24
.reference _$DBF_STR$_Ld33
.globl	_$DBF_STR$_Ld33
_$DBF_STR$_Ld33:
.reference _$DBF_STR$_Ld34
	.ascii	"Cannot open index: \"%s\".\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld36
_$DBF_STR$_Ld36:
	.short	0,1
	.long	0,-1,47
.reference _$DBF_STR$_Ld35
.globl	_$DBF_STR$_Ld35
_$DBF_STR$_Ld35:
.reference _$DBF_STR$_Ld36
	.ascii	"Can not create index: too many indexes in file.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld38
_$DBF_STR$_Ld38:
	.short	0,1
	.long	0,-1,26
.reference _$DBF_STR$_Ld37
.globl	_$DBF_STR$_Ld37
_$DBF_STR$_Ld37:
.reference _$DBF_STR$_Ld38
	.ascii	"Index \"%s\" does not exist.\000"

.const_data
	.align 2
.globl	_$DBF_STR$_Ld40
_$DBF_STR$_Ld40:
	.short	0,1
	.long	0,-1,48
.reference _$DBF_STR$_Ld39
.globl	_$DBF_STR$_Ld39
_$DBF_STR$_Ld39:
.reference _$DBF_STR$_Ld40
	.ascii	"Exclusive access is required for this operation.\000"
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
L_$DBF_STR$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_FILE_NOT_FOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_VERSION$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_VERSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld5$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_RECORD_LOCKED$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_RECORD_LOCKED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld7$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_WRITE_ERROR$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_WRITE_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld9$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_WRITE_INDEX_ERROR$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_WRITE_INDEX_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld11$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_KEY_VIOLATION$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_KEY_VIOLATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld13$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_DBF_FILE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_DBF_FILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld15$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_DBF_FILE_FIELDERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld17$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_FIELD_TOO_LONG$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_FIELD_TOO_LONG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld19$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_FIELD_COUNT$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_FIELD_COUNT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld21$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_FIELD_TYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld23$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld25$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld27$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld29$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_EXPRESSION_TOO_LONG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld31$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_INDEX_TYPE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_INDEX_TYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld33$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_CANNOT_OPEN_INDEX$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_CANNOT_OPEN_INDEX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld35$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_TOO_MANY_INDEXES$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_TOO_MANY_INDEXES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld37$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_NOT_EXIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_STR$_Ld39$non_lazy_ptr:
.indirect_symbol _$DBF_STR$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS
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

