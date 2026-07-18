# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CAIRO_CAIRO_VERSION$LONGINT$LONGINT$LONGINT
_CAIRO_CAIRO_VERSION$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	call	L_cairo_version$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	$1759218605,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$12,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	imull	$10000,%ecx
	movl	-16(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	imull	$10000,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	imull	$100,%eax
	addl	%eax,%ecx
	movl	-16(%ebp),%eax
	cltd
	idivl	%ecx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_CAIRO
_THREADVARLIST_CAIRO:
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

L_cairo_version$stub:
.indirect_symbol _cairo_version
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
.globl	_INIT_CAIRO_CAIRO_STATUS_T
_INIT_CAIRO_CAIRO_STATUS_T:
	.byte	3,14
	.ascii	"cairo_status_t"
	.byte	5
	.long	0,19,0
	.byte	20
	.ascii	"CAIRO_STATUS_SUCCESS"
	.byte	22
	.ascii	"CAIRO_STATUS_NO_MEMORY"
	.byte	28
	.ascii	"CAIRO_STATUS_INVALID_RESTORE"
	.byte	30
	.ascii	"CAIRO_STATUS_INVALID_POP_GROUP"
	.byte	29
	.ascii	"CAIRO_STATUS_NO_CURRENT_POINT"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_MATRIX"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_STATUS"
	.byte	25
	.ascii	"CAIRO_STATUS_NULL_POINTER"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_STRING"
	.byte	30
	.ascii	"CAIRO_STATUS_INVALID_PATH_DATA"
	.byte	23
	.ascii	"CAIRO_STATUS_READ_ERROR"
	.byte	24
	.ascii	"CAIRO_STATUS_WRITE_ERROR"
	.byte	29
	.ascii	"CAIRO_STATUS_SURFACE_FINISHED"
	.byte	34
	.ascii	"CAIRO_STATUS_SURFACE_TYPE_MISMATCH"
	.byte	34
	.ascii	"CAIRO_STATUS_PATTERN_TYPE_MISMATCH"
	.byte	28
	.ascii	"CAIRO_STATUS_INVALID_CONTENT"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_FORMAT"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_VISUAL"
	.byte	27
	.ascii	"CAIRO_STATUS_FILE_NOT_FOUND"
	.byte	25
	.ascii	"CAIRO_STATUS_INVALID_DASH"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_STATUS_T
_RTTI_CAIRO_CAIRO_STATUS_T:
	.byte	3,14
	.ascii	"cairo_status_t"
	.byte	5
	.long	0,19,0
	.byte	20
	.ascii	"CAIRO_STATUS_SUCCESS"
	.byte	22
	.ascii	"CAIRO_STATUS_NO_MEMORY"
	.byte	28
	.ascii	"CAIRO_STATUS_INVALID_RESTORE"
	.byte	30
	.ascii	"CAIRO_STATUS_INVALID_POP_GROUP"
	.byte	29
	.ascii	"CAIRO_STATUS_NO_CURRENT_POINT"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_MATRIX"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_STATUS"
	.byte	25
	.ascii	"CAIRO_STATUS_NULL_POINTER"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_STRING"
	.byte	30
	.ascii	"CAIRO_STATUS_INVALID_PATH_DATA"
	.byte	23
	.ascii	"CAIRO_STATUS_READ_ERROR"
	.byte	24
	.ascii	"CAIRO_STATUS_WRITE_ERROR"
	.byte	29
	.ascii	"CAIRO_STATUS_SURFACE_FINISHED"
	.byte	34
	.ascii	"CAIRO_STATUS_SURFACE_TYPE_MISMATCH"
	.byte	34
	.ascii	"CAIRO_STATUS_PATTERN_TYPE_MISMATCH"
	.byte	28
	.ascii	"CAIRO_STATUS_INVALID_CONTENT"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_FORMAT"
	.byte	27
	.ascii	"CAIRO_STATUS_INVALID_VISUAL"
	.byte	27
	.ascii	"CAIRO_STATUS_FILE_NOT_FOUND"
	.byte	25
	.ascii	"CAIRO_STATUS_INVALID_DASH"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_STATUS_T_s2o
_RTTI_CAIRO_CAIRO_STATUS_T_s2o:
	.long	20,18
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+538
	.long	15
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+453
	.long	19
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+566
	.long	16
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+482
	.long	5
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+163
	.long	9
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+273
	.long	3
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+102
	.long	2
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+73
	.long	6
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+191
	.long	8
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+245
	.long	17
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+510
	.long	4
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+133
	.long	1
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+50
	.long	7
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+219
	.long	14
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+418
	.long	10
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+304
	.long	0
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+29
	.long	12
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+353
	.long	13
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+383
	.long	11
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+328

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_STATUS_T_o2s
_RTTI_CAIRO_CAIRO_STATUS_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+29
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+50
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+73
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+102
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+133
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+163
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+191
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+219
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+245
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+273
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+304
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+328
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+353
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+383
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+418
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+453
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+482
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+510
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+538
	.long	_RTTI_CAIRO_CAIRO_STATUS_T+566

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_OPERATOR_T
_INIT_CAIRO_CAIRO_OPERATOR_T:
	.byte	3,16
	.ascii	"cairo_operator_t"
	.byte	5
	.long	0,13,0
	.byte	20
	.ascii	"CAIRO_OPERATOR_CLEAR"
	.byte	21
	.ascii	"CAIRO_OPERATOR_SOURCE"
	.byte	19
	.ascii	"CAIRO_OPERATOR_OVER"
	.byte	17
	.ascii	"CAIRO_OPERATOR_IN"
	.byte	18
	.ascii	"CAIRO_OPERATOR_OUT"
	.byte	19
	.ascii	"CAIRO_OPERATOR_ATOP"
	.byte	19
	.ascii	"CAIRO_OPERATOR_DEST"
	.byte	24
	.ascii	"CAIRO_OPERATOR_DEST_OVER"
	.byte	22
	.ascii	"CAIRO_OPERATOR_DEST_IN"
	.byte	23
	.ascii	"CAIRO_OPERATOR_DEST_OUT"
	.byte	24
	.ascii	"CAIRO_OPERATOR_DEST_ATOP"
	.byte	18
	.ascii	"CAIRO_OPERATOR_XOR"
	.byte	18
	.ascii	"CAIRO_OPERATOR_ADD"
	.byte	23
	.ascii	"CAIRO_OPERATOR_SATURATE"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_OPERATOR_T
_RTTI_CAIRO_CAIRO_OPERATOR_T:
	.byte	3,16
	.ascii	"cairo_operator_t"
	.byte	5
	.long	0,13,0
	.byte	20
	.ascii	"CAIRO_OPERATOR_CLEAR"
	.byte	21
	.ascii	"CAIRO_OPERATOR_SOURCE"
	.byte	19
	.ascii	"CAIRO_OPERATOR_OVER"
	.byte	17
	.ascii	"CAIRO_OPERATOR_IN"
	.byte	18
	.ascii	"CAIRO_OPERATOR_OUT"
	.byte	19
	.ascii	"CAIRO_OPERATOR_ATOP"
	.byte	19
	.ascii	"CAIRO_OPERATOR_DEST"
	.byte	24
	.ascii	"CAIRO_OPERATOR_DEST_OVER"
	.byte	22
	.ascii	"CAIRO_OPERATOR_DEST_IN"
	.byte	23
	.ascii	"CAIRO_OPERATOR_DEST_OUT"
	.byte	24
	.ascii	"CAIRO_OPERATOR_DEST_ATOP"
	.byte	18
	.ascii	"CAIRO_OPERATOR_XOR"
	.byte	18
	.ascii	"CAIRO_OPERATOR_ADD"
	.byte	23
	.ascii	"CAIRO_OPERATOR_SATURATE"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_OPERATOR_T_s2o
_RTTI_CAIRO_CAIRO_OPERATOR_T_s2o:
	.long	14,12
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+287
	.long	5
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+131
	.long	0
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+31
	.long	6
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+151
	.long	10
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+243
	.long	8
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+196
	.long	9
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+219
	.long	7
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+171
	.long	3
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+94
	.long	4
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+112
	.long	2
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+74
	.long	13
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+306
	.long	1
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+52
	.long	11
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+268

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_OPERATOR_T_o2s
_RTTI_CAIRO_CAIRO_OPERATOR_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+31
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+52
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+74
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+94
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+112
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+131
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+151
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+171
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+196
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+219
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+243
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+268
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+287
	.long	_RTTI_CAIRO_CAIRO_OPERATOR_T+306

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_ANTIALIAS_T
_INIT_CAIRO_CAIRO_ANTIALIAS_T:
	.byte	3,17
	.ascii	"cairo_antialias_t"
	.byte	5
	.long	0,3,0
	.byte	23
	.ascii	"CAIRO_ANTIALIAS_DEFAULT"
	.byte	20
	.ascii	"CAIRO_ANTIALIAS_NONE"
	.byte	20
	.ascii	"CAIRO_ANTIALIAS_GRAY"
	.byte	24
	.ascii	"CAIRO_ANTIALIAS_SUBPIXEL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_ANTIALIAS_T
_RTTI_CAIRO_CAIRO_ANTIALIAS_T:
	.byte	3,17
	.ascii	"cairo_antialias_t"
	.byte	5
	.long	0,3,0
	.byte	23
	.ascii	"CAIRO_ANTIALIAS_DEFAULT"
	.byte	20
	.ascii	"CAIRO_ANTIALIAS_NONE"
	.byte	20
	.ascii	"CAIRO_ANTIALIAS_GRAY"
	.byte	24
	.ascii	"CAIRO_ANTIALIAS_SUBPIXEL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_ANTIALIAS_T_s2o
_RTTI_CAIRO_CAIRO_ANTIALIAS_T_s2o:
	.long	4,0
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+32
	.long	2
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+77
	.long	1
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+56
	.long	3
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+98

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_ANTIALIAS_T_o2s
_RTTI_CAIRO_CAIRO_ANTIALIAS_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+32
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+56
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+77
	.long	_RTTI_CAIRO_CAIRO_ANTIALIAS_T+98

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FILL_RULE_T
_INIT_CAIRO_CAIRO_FILL_RULE_T:
	.byte	3,17
	.ascii	"cairo_fill_rule_t"
	.byte	5
	.long	0,1,0
	.byte	23
	.ascii	"CAIRO_FILL_RULE_WINDING"
	.byte	24
	.ascii	"CAIRO_FILL_RULE_EVEN_ODD"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FILL_RULE_T
_RTTI_CAIRO_CAIRO_FILL_RULE_T:
	.byte	3,17
	.ascii	"cairo_fill_rule_t"
	.byte	5
	.long	0,1,0
	.byte	23
	.ascii	"CAIRO_FILL_RULE_WINDING"
	.byte	24
	.ascii	"CAIRO_FILL_RULE_EVEN_ODD"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FILL_RULE_T_s2o
_RTTI_CAIRO_CAIRO_FILL_RULE_T_s2o:
	.long	2,1
	.long	_RTTI_CAIRO_CAIRO_FILL_RULE_T+56
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FILL_RULE_T+32

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FILL_RULE_T_o2s
_RTTI_CAIRO_CAIRO_FILL_RULE_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FILL_RULE_T+32
	.long	_RTTI_CAIRO_CAIRO_FILL_RULE_T+56

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_LINE_CAP_T
_INIT_CAIRO_CAIRO_LINE_CAP_T:
	.byte	3,16
	.ascii	"cairo_line_cap_t"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"CAIRO_LINE_CAP_BUTT"
	.byte	20
	.ascii	"CAIRO_LINE_CAP_ROUND"
	.byte	21
	.ascii	"CAIRO_LINE_CAP_SQUARE"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_LINE_CAP_T
_RTTI_CAIRO_CAIRO_LINE_CAP_T:
	.byte	3,16
	.ascii	"cairo_line_cap_t"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"CAIRO_LINE_CAP_BUTT"
	.byte	20
	.ascii	"CAIRO_LINE_CAP_ROUND"
	.byte	21
	.ascii	"CAIRO_LINE_CAP_SQUARE"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_LINE_CAP_T_s2o
_RTTI_CAIRO_CAIRO_LINE_CAP_T_s2o:
	.long	3,0
	.long	_RTTI_CAIRO_CAIRO_LINE_CAP_T+31
	.long	1
	.long	_RTTI_CAIRO_CAIRO_LINE_CAP_T+51
	.long	2
	.long	_RTTI_CAIRO_CAIRO_LINE_CAP_T+72

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_LINE_CAP_T_o2s
_RTTI_CAIRO_CAIRO_LINE_CAP_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_LINE_CAP_T+31
	.long	_RTTI_CAIRO_CAIRO_LINE_CAP_T+51
	.long	_RTTI_CAIRO_CAIRO_LINE_CAP_T+72

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_LINE_JOIN_T
_INIT_CAIRO_CAIRO_LINE_JOIN_T:
	.byte	3,17
	.ascii	"cairo_line_join_t"
	.byte	5
	.long	0,2,0
	.byte	21
	.ascii	"CAIRO_LINE_JOIN_MITER"
	.byte	21
	.ascii	"CAIRO_LINE_JOIN_ROUND"
	.byte	21
	.ascii	"CAIRO_LINE_JOIN_BEVEL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_LINE_JOIN_T
_RTTI_CAIRO_CAIRO_LINE_JOIN_T:
	.byte	3,17
	.ascii	"cairo_line_join_t"
	.byte	5
	.long	0,2,0
	.byte	21
	.ascii	"CAIRO_LINE_JOIN_MITER"
	.byte	21
	.ascii	"CAIRO_LINE_JOIN_ROUND"
	.byte	21
	.ascii	"CAIRO_LINE_JOIN_BEVEL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_LINE_JOIN_T_s2o
_RTTI_CAIRO_CAIRO_LINE_JOIN_T_s2o:
	.long	3,2
	.long	_RTTI_CAIRO_CAIRO_LINE_JOIN_T+76
	.long	0
	.long	_RTTI_CAIRO_CAIRO_LINE_JOIN_T+32
	.long	1
	.long	_RTTI_CAIRO_CAIRO_LINE_JOIN_T+54

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_LINE_JOIN_T_o2s
_RTTI_CAIRO_CAIRO_LINE_JOIN_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_LINE_JOIN_T+32
	.long	_RTTI_CAIRO_CAIRO_LINE_JOIN_T+54
	.long	_RTTI_CAIRO_CAIRO_LINE_JOIN_T+76

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FONT_SLANT_T
_INIT_CAIRO_CAIRO_FONT_SLANT_T:
	.byte	3,18
	.ascii	"cairo_font_slant_t"
	.byte	5
	.long	0,2,0
	.byte	23
	.ascii	"CAIRO_FONT_SLANT_NORMAL"
	.byte	23
	.ascii	"CAIRO_FONT_SLANT_ITALIC"
	.byte	24
	.ascii	"CAIRO_FONT_SLANT_OBLIQUE"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_SLANT_T
_RTTI_CAIRO_CAIRO_FONT_SLANT_T:
	.byte	3,18
	.ascii	"cairo_font_slant_t"
	.byte	5
	.long	0,2,0
	.byte	23
	.ascii	"CAIRO_FONT_SLANT_NORMAL"
	.byte	23
	.ascii	"CAIRO_FONT_SLANT_ITALIC"
	.byte	24
	.ascii	"CAIRO_FONT_SLANT_OBLIQUE"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_SLANT_T_s2o
_RTTI_CAIRO_CAIRO_FONT_SLANT_T_s2o:
	.long	3,1
	.long	_RTTI_CAIRO_CAIRO_FONT_SLANT_T+57
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FONT_SLANT_T+33
	.long	2
	.long	_RTTI_CAIRO_CAIRO_FONT_SLANT_T+81

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_SLANT_T_o2s
_RTTI_CAIRO_CAIRO_FONT_SLANT_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FONT_SLANT_T+33
	.long	_RTTI_CAIRO_CAIRO_FONT_SLANT_T+57
	.long	_RTTI_CAIRO_CAIRO_FONT_SLANT_T+81

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FONT_WEIGHT_T
_INIT_CAIRO_CAIRO_FONT_WEIGHT_T:
	.byte	3,19
	.ascii	"cairo_font_weight_t"
	.byte	5
	.long	0,1,0
	.byte	24
	.ascii	"CAIRO_FONT_WEIGHT_NORMAL"
	.byte	22
	.ascii	"CAIRO_FONT_WEIGHT_BOLD"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T
_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T:
	.byte	3,19
	.ascii	"cairo_font_weight_t"
	.byte	5
	.long	0,1,0
	.byte	24
	.ascii	"CAIRO_FONT_WEIGHT_NORMAL"
	.byte	22
	.ascii	"CAIRO_FONT_WEIGHT_BOLD"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T_s2o
_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T_s2o:
	.long	2,1
	.long	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T+59
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T+34

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T_o2s
_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T+34
	.long	_RTTI_CAIRO_CAIRO_FONT_WEIGHT_T+59

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_SUBPIXEL_ORDER_T
_INIT_CAIRO_CAIRO_SUBPIXEL_ORDER_T:
	.byte	3,22
	.ascii	"cairo_subpixel_order_t"
	.byte	5
	.long	0,4,0
	.byte	28
	.ascii	"CAIRO_SUBPIXEL_ORDER_DEFAULT"
	.byte	24
	.ascii	"CAIRO_SUBPIXEL_ORDER_RGB"
	.byte	24
	.ascii	"CAIRO_SUBPIXEL_ORDER_BGR"
	.byte	25
	.ascii	"CAIRO_SUBPIXEL_ORDER_VRGB"
	.byte	25
	.ascii	"CAIRO_SUBPIXEL_ORDER_VBGR"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T
_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T:
	.byte	3,22
	.ascii	"cairo_subpixel_order_t"
	.byte	5
	.long	0,4,0
	.byte	28
	.ascii	"CAIRO_SUBPIXEL_ORDER_DEFAULT"
	.byte	24
	.ascii	"CAIRO_SUBPIXEL_ORDER_RGB"
	.byte	24
	.ascii	"CAIRO_SUBPIXEL_ORDER_BGR"
	.byte	25
	.ascii	"CAIRO_SUBPIXEL_ORDER_VRGB"
	.byte	25
	.ascii	"CAIRO_SUBPIXEL_ORDER_VBGR"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T_s2o
_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T_s2o:
	.long	5,2
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+91
	.long	0
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+37
	.long	1
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+66
	.long	4
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+142
	.long	3
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+116

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T_o2s
_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+37
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+66
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+91
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+116
	.long	_RTTI_CAIRO_CAIRO_SUBPIXEL_ORDER_T+142

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_HINT_STYLE_T
_INIT_CAIRO_CAIRO_HINT_STYLE_T:
	.byte	3,18
	.ascii	"cairo_hint_style_t"
	.byte	5
	.long	0,4,0
	.byte	24
	.ascii	"CAIRO_HINT_STYLE_DEFAULT"
	.byte	21
	.ascii	"CAIRO_HINT_STYLE_NONE"
	.byte	23
	.ascii	"CAIRO_HINT_STYLE_SLIGHT"
	.byte	23
	.ascii	"CAIRO_HINT_STYLE_MEDIUM"
	.byte	21
	.ascii	"CAIRO_HINT_STYLE_FULL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_HINT_STYLE_T
_RTTI_CAIRO_CAIRO_HINT_STYLE_T:
	.byte	3,18
	.ascii	"cairo_hint_style_t"
	.byte	5
	.long	0,4,0
	.byte	24
	.ascii	"CAIRO_HINT_STYLE_DEFAULT"
	.byte	21
	.ascii	"CAIRO_HINT_STYLE_NONE"
	.byte	23
	.ascii	"CAIRO_HINT_STYLE_SLIGHT"
	.byte	23
	.ascii	"CAIRO_HINT_STYLE_MEDIUM"
	.byte	21
	.ascii	"CAIRO_HINT_STYLE_FULL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_HINT_STYLE_T_s2o
_RTTI_CAIRO_CAIRO_HINT_STYLE_T_s2o:
	.long	5,0
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+33
	.long	4
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+128
	.long	3
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+104
	.long	1
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+58
	.long	2
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+80

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_HINT_STYLE_T_o2s
_RTTI_CAIRO_CAIRO_HINT_STYLE_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+33
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+58
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+80
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+104
	.long	_RTTI_CAIRO_CAIRO_HINT_STYLE_T+128

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_HINT_METRICS_T
_INIT_CAIRO_CAIRO_HINT_METRICS_T:
	.byte	3,20
	.ascii	"cairo_hint_metrics_t"
	.byte	5
	.long	0,2,0
	.byte	26
	.ascii	"CAIRO_HINT_METRICS_DEFAULT"
	.byte	22
	.ascii	"CAIRO_HINT_METRICS_OFF"
	.byte	21
	.ascii	"CAIRO_HINT_METRICS_ON"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_HINT_METRICS_T
_RTTI_CAIRO_CAIRO_HINT_METRICS_T:
	.byte	3,20
	.ascii	"cairo_hint_metrics_t"
	.byte	5
	.long	0,2,0
	.byte	26
	.ascii	"CAIRO_HINT_METRICS_DEFAULT"
	.byte	22
	.ascii	"CAIRO_HINT_METRICS_OFF"
	.byte	21
	.ascii	"CAIRO_HINT_METRICS_ON"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_HINT_METRICS_T_s2o
_RTTI_CAIRO_CAIRO_HINT_METRICS_T_s2o:
	.long	3,0
	.long	_RTTI_CAIRO_CAIRO_HINT_METRICS_T+35
	.long	1
	.long	_RTTI_CAIRO_CAIRO_HINT_METRICS_T+62
	.long	2
	.long	_RTTI_CAIRO_CAIRO_HINT_METRICS_T+85

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_HINT_METRICS_T_o2s
_RTTI_CAIRO_CAIRO_HINT_METRICS_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_HINT_METRICS_T+35
	.long	_RTTI_CAIRO_CAIRO_HINT_METRICS_T+62
	.long	_RTTI_CAIRO_CAIRO_HINT_METRICS_T+85

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_PATH_DATA_TYPE_T
_INIT_CAIRO_CAIRO_PATH_DATA_TYPE_T:
	.byte	3,22
	.ascii	"cairo_path_data_type_t"
	.byte	5
	.long	0,3,0
	.byte	18
	.ascii	"CAIRO_PATH_MOVE_TO"
	.byte	18
	.ascii	"CAIRO_PATH_LINE_TO"
	.byte	19
	.ascii	"CAIRO_PATH_CURVE_TO"
	.byte	21
	.ascii	"CAIRO_PATH_CLOSE_PATH"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T
_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T:
	.byte	3,22
	.ascii	"cairo_path_data_type_t"
	.byte	5
	.long	0,3,0
	.byte	18
	.ascii	"CAIRO_PATH_MOVE_TO"
	.byte	18
	.ascii	"CAIRO_PATH_LINE_TO"
	.byte	19
	.ascii	"CAIRO_PATH_CURVE_TO"
	.byte	21
	.ascii	"CAIRO_PATH_CLOSE_PATH"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T_s2o
_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T_s2o:
	.long	4,3
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+95
	.long	2
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+75
	.long	1
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+56
	.long	0
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+37

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T_o2s
_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+37
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+56
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+75
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T+95

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_CONTENT_T
_INIT_CAIRO_CAIRO_CONTENT_T:
	.byte	3,15
	.ascii	"cairo_content_t"
	.byte	5
	.long	4096,12288,0
	.byte	19
	.ascii	"CAIRO_CONTENT_COLOR"
	.byte	19
	.ascii	"CAIRO_CONTENT_ALPHA"
	.byte	25
	.ascii	"CAIRO_CONTENT_COLOR_ALPHA"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_CONTENT_T
_RTTI_CAIRO_CAIRO_CONTENT_T:
	.byte	3,15
	.ascii	"cairo_content_t"
	.byte	5
	.long	4096,12288,0
	.byte	19
	.ascii	"CAIRO_CONTENT_COLOR"
	.byte	19
	.ascii	"CAIRO_CONTENT_ALPHA"
	.byte	25
	.ascii	"CAIRO_CONTENT_COLOR_ALPHA"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_CONTENT_T_s2o
_RTTI_CAIRO_CAIRO_CONTENT_T_s2o:
	.long	3,8192
	.long	_RTTI_CAIRO_CAIRO_CONTENT_T+50
	.long	4096
	.long	_RTTI_CAIRO_CAIRO_CONTENT_T+30
	.long	12288
	.long	_RTTI_CAIRO_CAIRO_CONTENT_T+70

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_CONTENT_T_o2s
_RTTI_CAIRO_CAIRO_CONTENT_T_o2s:
	.long	1,3,4096
	.long	_RTTI_CAIRO_CAIRO_CONTENT_T+30
	.long	8192
	.long	_RTTI_CAIRO_CAIRO_CONTENT_T+50
	.long	12288
	.long	_RTTI_CAIRO_CAIRO_CONTENT_T+70

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FORMAT_T
_INIT_CAIRO_CAIRO_FORMAT_T:
	.byte	3,14
	.ascii	"cairo_format_t"
	.byte	5
	.long	0,3,0
	.byte	19
	.ascii	"CAIRO_FORMAT_ARGB32"
	.byte	18
	.ascii	"CAIRO_FORMAT_RGB24"
	.byte	15
	.ascii	"CAIRO_FORMAT_A8"
	.byte	15
	.ascii	"CAIRO_FORMAT_A1"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FORMAT_T
_RTTI_CAIRO_CAIRO_FORMAT_T:
	.byte	3,14
	.ascii	"cairo_format_t"
	.byte	5
	.long	0,3,0
	.byte	19
	.ascii	"CAIRO_FORMAT_ARGB32"
	.byte	18
	.ascii	"CAIRO_FORMAT_RGB24"
	.byte	15
	.ascii	"CAIRO_FORMAT_A8"
	.byte	15
	.ascii	"CAIRO_FORMAT_A1"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FORMAT_T_s2o
_RTTI_CAIRO_CAIRO_FORMAT_T_s2o:
	.long	4,3
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+84
	.long	2
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+68
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+29
	.long	1
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+49

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FORMAT_T_o2s
_RTTI_CAIRO_CAIRO_FORMAT_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+29
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+49
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+68
	.long	_RTTI_CAIRO_CAIRO_FORMAT_T+84

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_EXTEND_T
_INIT_CAIRO_CAIRO_EXTEND_T:
	.byte	3,14
	.ascii	"cairo_extend_t"
	.byte	5
	.long	0,3,0
	.byte	17
	.ascii	"CAIRO_EXTEND_NONE"
	.byte	19
	.ascii	"CAIRO_EXTEND_REPEAT"
	.byte	20
	.ascii	"CAIRO_EXTEND_REFLECT"
	.byte	16
	.ascii	"CAIRO_EXTEND_PAD"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_EXTEND_T
_RTTI_CAIRO_CAIRO_EXTEND_T:
	.byte	3,14
	.ascii	"cairo_extend_t"
	.byte	5
	.long	0,3,0
	.byte	17
	.ascii	"CAIRO_EXTEND_NONE"
	.byte	19
	.ascii	"CAIRO_EXTEND_REPEAT"
	.byte	20
	.ascii	"CAIRO_EXTEND_REFLECT"
	.byte	16
	.ascii	"CAIRO_EXTEND_PAD"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_EXTEND_T_s2o
_RTTI_CAIRO_CAIRO_EXTEND_T_s2o:
	.long	4,0
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+29
	.long	3
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+88
	.long	2
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+67
	.long	1
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+47

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_EXTEND_T_o2s
_RTTI_CAIRO_CAIRO_EXTEND_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+29
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+47
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+67
	.long	_RTTI_CAIRO_CAIRO_EXTEND_T+88

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FILTER_T
_INIT_CAIRO_CAIRO_FILTER_T:
	.byte	3,14
	.ascii	"cairo_filter_t"
	.byte	5
	.long	0,5,0
	.byte	17
	.ascii	"CAIRO_FILTER_FAST"
	.byte	17
	.ascii	"CAIRO_FILTER_GOOD"
	.byte	17
	.ascii	"CAIRO_FILTER_BEST"
	.byte	20
	.ascii	"CAIRO_FILTER_NEAREST"
	.byte	21
	.ascii	"CAIRO_FILTER_BILINEAR"
	.byte	21
	.ascii	"CAIRO_FILTER_GAUSSIAN"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FILTER_T
_RTTI_CAIRO_CAIRO_FILTER_T:
	.byte	3,14
	.ascii	"cairo_filter_t"
	.byte	5
	.long	0,5,0
	.byte	17
	.ascii	"CAIRO_FILTER_FAST"
	.byte	17
	.ascii	"CAIRO_FILTER_GOOD"
	.byte	17
	.ascii	"CAIRO_FILTER_BEST"
	.byte	20
	.ascii	"CAIRO_FILTER_NEAREST"
	.byte	21
	.ascii	"CAIRO_FILTER_BILINEAR"
	.byte	21
	.ascii	"CAIRO_FILTER_GAUSSIAN"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FILTER_T_s2o
_RTTI_CAIRO_CAIRO_FILTER_T_s2o:
	.long	6,2
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+65
	.long	4
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+104
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+29
	.long	5
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+126
	.long	1
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+47
	.long	3
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+83

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FILTER_T_o2s
_RTTI_CAIRO_CAIRO_FILTER_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+29
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+47
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+65
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+83
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+104
	.long	_RTTI_CAIRO_CAIRO_FILTER_T+126

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FONT_TYPE_T
_INIT_CAIRO_CAIRO_FONT_TYPE_T:
	.byte	3,17
	.ascii	"cairo_font_type_t"
	.byte	5
	.long	0,3,0
	.byte	19
	.ascii	"CAIRO_FONT_TYPE_TOY"
	.byte	18
	.ascii	"CAIRO_FONT_TYPE_FT"
	.byte	21
	.ascii	"CAIRO_FONT_TYPE_WIN32"
	.byte	21
	.ascii	"CAIRO_FONT_TYPE_ATSUI"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_TYPE_T
_RTTI_CAIRO_CAIRO_FONT_TYPE_T:
	.byte	3,17
	.ascii	"cairo_font_type_t"
	.byte	5
	.long	0,3,0
	.byte	19
	.ascii	"CAIRO_FONT_TYPE_TOY"
	.byte	18
	.ascii	"CAIRO_FONT_TYPE_FT"
	.byte	21
	.ascii	"CAIRO_FONT_TYPE_WIN32"
	.byte	21
	.ascii	"CAIRO_FONT_TYPE_ATSUI"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_TYPE_T_s2o
_RTTI_CAIRO_CAIRO_FONT_TYPE_T_s2o:
	.long	4,3
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+93
	.long	1
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+52
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+32
	.long	2
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+71

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_TYPE_T_o2s
_RTTI_CAIRO_CAIRO_FONT_TYPE_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+32
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+52
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+71
	.long	_RTTI_CAIRO_CAIRO_FONT_TYPE_T+93

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_PATTERN_TYPE_T
_INIT_CAIRO_CAIRO_PATTERN_TYPE_T:
	.byte	3,20
	.ascii	"cairo_pattern_type_t"
	.byte	5
	.long	0,3,0
	.byte	24
	.ascii	"CAIRO_PATTERN_TYPE_SOLID"
	.byte	26
	.ascii	"CAIRO_PATTERN_TYPE_SURFACE"
	.byte	25
	.ascii	"CAIRO_PATTERN_TYPE_LINEAR"
	.byte	25
	.ascii	"CAIRO_PATTERN_TYPE_RADIAL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T
_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T:
	.byte	3,20
	.ascii	"cairo_pattern_type_t"
	.byte	5
	.long	0,3,0
	.byte	24
	.ascii	"CAIRO_PATTERN_TYPE_SOLID"
	.byte	26
	.ascii	"CAIRO_PATTERN_TYPE_SURFACE"
	.byte	25
	.ascii	"CAIRO_PATTERN_TYPE_LINEAR"
	.byte	25
	.ascii	"CAIRO_PATTERN_TYPE_RADIAL"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T_s2o
_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T_s2o:
	.long	4,2
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+87
	.long	3
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+113
	.long	0
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+35
	.long	1
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+60

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T_o2s
_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+35
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+60
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+87
	.long	_RTTI_CAIRO_CAIRO_PATTERN_TYPE_T+113

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_SURFACE_TYPE_T
_INIT_CAIRO_CAIRO_SURFACE_TYPE_T:
	.byte	3,20
	.ascii	"cairo_surface_type_t"
	.byte	5
	.long	0,11,0
	.byte	24
	.ascii	"CAIRO_SURFACE_TYPE_IMAGE"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_PDF"
	.byte	21
	.ascii	"CAIRO_SURFACE_TYPE_PS"
	.byte	23
	.ascii	"CAIRO_SURFACE_TYPE_XLIB"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_XCB"
	.byte	24
	.ascii	"CAIRO_SURFACE_TYPE_GLITZ"
	.byte	25
	.ascii	"CAIRO_SURFACE_TYPE_QUARTZ"
	.byte	24
	.ascii	"CAIRO_SURFACE_TYPE_WIN32"
	.byte	23
	.ascii	"CAIRO_SURFACE_TYPE_BEOS"
	.byte	27
	.ascii	"CAIRO_SURFACE_TYPE_DIRECTFB"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_SVG"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_OS2"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T
_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T:
	.byte	3,20
	.ascii	"cairo_surface_type_t"
	.byte	5
	.long	0,11,0
	.byte	24
	.ascii	"CAIRO_SURFACE_TYPE_IMAGE"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_PDF"
	.byte	21
	.ascii	"CAIRO_SURFACE_TYPE_PS"
	.byte	23
	.ascii	"CAIRO_SURFACE_TYPE_XLIB"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_XCB"
	.byte	24
	.ascii	"CAIRO_SURFACE_TYPE_GLITZ"
	.byte	25
	.ascii	"CAIRO_SURFACE_TYPE_QUARTZ"
	.byte	24
	.ascii	"CAIRO_SURFACE_TYPE_WIN32"
	.byte	23
	.ascii	"CAIRO_SURFACE_TYPE_BEOS"
	.byte	27
	.ascii	"CAIRO_SURFACE_TYPE_DIRECTFB"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_SVG"
	.byte	22
	.ascii	"CAIRO_SURFACE_TYPE_OS2"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T_s2o
_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T_s2o:
	.long	12,8
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+228
	.long	9
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+252
	.long	5
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+152
	.long	0
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+35
	.long	11
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+303
	.long	1
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+60
	.long	2
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+83
	.long	6
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+177
	.long	10
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+280
	.long	7
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+203
	.long	4
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+129
	.long	3
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+105

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T_o2s
_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+35
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+60
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+83
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+105
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+129
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+152
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+177
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+203
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+228
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+252
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+280
	.long	_RTTI_CAIRO_CAIRO_SURFACE_TYPE_T+303

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_SVG_VERSION_T
_INIT_CAIRO_CAIRO_SVG_VERSION_T:
	.byte	3,19
	.ascii	"cairo_svg_version_t"
	.byte	5
	.long	0,1,0
	.byte	21
	.ascii	"CAIRO_SVG_VERSION_1_1"
	.byte	21
	.ascii	"CAIRO_SVG_VERSION_1_2"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SVG_VERSION_T
_RTTI_CAIRO_CAIRO_SVG_VERSION_T:
	.byte	3,19
	.ascii	"cairo_svg_version_t"
	.byte	5
	.long	0,1,0
	.byte	21
	.ascii	"CAIRO_SVG_VERSION_1_1"
	.byte	21
	.ascii	"CAIRO_SVG_VERSION_1_2"
	.byte	5
	.ascii	"Cairo"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SVG_VERSION_T_s2o
_RTTI_CAIRO_CAIRO_SVG_VERSION_T_s2o:
	.long	2,0
	.long	_RTTI_CAIRO_CAIRO_SVG_VERSION_T+34
	.long	1
	.long	_RTTI_CAIRO_CAIRO_SVG_VERSION_T+56

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SVG_VERSION_T_o2s
_RTTI_CAIRO_CAIRO_SVG_VERSION_T_o2s:
	.long	0
	.long	_RTTI_CAIRO_CAIRO_SVG_VERSION_T+34
	.long	_RTTI_CAIRO_CAIRO_SVG_VERSION_T+56

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_SVG_VERSION_T
_INIT_CAIRO_PCAIRO_SVG_VERSION_T:
	.byte	0
	.ascii	"\024pcairo_svg_version_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_SVG_VERSION_T
_RTTI_CAIRO_PCAIRO_SVG_VERSION_T:
	.byte	0
	.ascii	"\024pcairo_svg_version_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_SURFACE_T
_INIT_CAIRO_PCAIRO_SURFACE_T:
	.byte	0
	.ascii	"\020Pcairo_surface_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_SURFACE_T
_RTTI_CAIRO_PCAIRO_SURFACE_T:
	.byte	0
	.ascii	"\020Pcairo_surface_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PPCAIRO_SURFACE_T
_INIT_CAIRO_PPCAIRO_SURFACE_T:
	.byte	0
	.ascii	"\021PPcairo_surface_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PPCAIRO_SURFACE_T
_RTTI_CAIRO_PPCAIRO_SURFACE_T:
	.byte	0
	.ascii	"\021PPcairo_surface_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_T
_INIT_CAIRO_PCAIRO_T:
	.byte	0
	.ascii	"\010Pcairo_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_T
_RTTI_CAIRO_PCAIRO_T:
	.byte	0
	.ascii	"\010Pcairo_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_PATTERN_T
_INIT_CAIRO_PCAIRO_PATTERN_T:
	.byte	0
	.ascii	"\020Pcairo_pattern_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_PATTERN_T
_RTTI_CAIRO_PCAIRO_PATTERN_T:
	.byte	0
	.ascii	"\020Pcairo_pattern_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_FONT_OPTIONS_T
_INIT_CAIRO_PCAIRO_FONT_OPTIONS_T:
	.byte	0
	.ascii	"\025Pcairo_font_options_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_FONT_OPTIONS_T
_RTTI_CAIRO_PCAIRO_FONT_OPTIONS_T:
	.byte	0
	.ascii	"\025Pcairo_font_options_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_FONT_FACE_T
_INIT_CAIRO_PCAIRO_FONT_FACE_T:
	.byte	0
	.ascii	"\022Pcairo_font_face_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_FONT_FACE_T
_RTTI_CAIRO_PCAIRO_FONT_FACE_T:
	.byte	0
	.ascii	"\022Pcairo_font_face_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_SCALED_FONT_T
_INIT_CAIRO_PCAIRO_SCALED_FONT_T:
	.byte	0
	.ascii	"\024Pcairo_scaled_font_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_SCALED_FONT_T
_RTTI_CAIRO_PCAIRO_SCALED_FONT_T:
	.byte	0
	.ascii	"\024Pcairo_scaled_font_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_BOOL_T
_INIT_CAIRO_PCAIRO_BOOL_T:
	.byte	0
	.ascii	"\015Pcairo_bool_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_BOOL_T
_RTTI_CAIRO_PCAIRO_BOOL_T:
	.byte	0
	.ascii	"\015Pcairo_bool_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_MATRIX_T
_INIT_CAIRO_PCAIRO_MATRIX_T:
	.byte	0
	.ascii	"\017Pcairo_matrix_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_MATRIX_T
_RTTI_CAIRO_PCAIRO_MATRIX_T:
	.byte	0
	.ascii	"\017Pcairo_matrix_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_USER_DATA_KEY_T
_INIT_CAIRO_PCAIRO_USER_DATA_KEY_T:
	.byte	0
	.ascii	"\026Pcairo_user_data_key_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_USER_DATA_KEY_T
_RTTI_CAIRO_PCAIRO_USER_DATA_KEY_T:
	.byte	0
	.ascii	"\026Pcairo_user_data_key_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_GLYPH_T
_INIT_CAIRO_PCAIRO_GLYPH_T:
	.byte	0
	.ascii	"\016Pcairo_glyph_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_GLYPH_T
_RTTI_CAIRO_PCAIRO_GLYPH_T:
	.byte	0
	.ascii	"\016Pcairo_glyph_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_TEXT_EXTENTS_T
_INIT_CAIRO_PCAIRO_TEXT_EXTENTS_T:
	.byte	0
	.ascii	"\025Pcairo_text_extents_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_TEXT_EXTENTS_T
_RTTI_CAIRO_PCAIRO_TEXT_EXTENTS_T:
	.byte	0
	.ascii	"\025Pcairo_text_extents_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_FONT_EXTENTS_T
_INIT_CAIRO_PCAIRO_FONT_EXTENTS_T:
	.byte	0
	.ascii	"\025Pcairo_font_extents_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_FONT_EXTENTS_T
_RTTI_CAIRO_PCAIRO_FONT_EXTENTS_T:
	.byte	0
	.ascii	"\025Pcairo_font_extents_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_PATH_DATA_TYPE_T
_INIT_CAIRO_PCAIRO_PATH_DATA_TYPE_T:
	.byte	0
	.ascii	"\027Pcairo_path_data_type_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_PATH_DATA_TYPE_T
_RTTI_CAIRO_PCAIRO_PATH_DATA_TYPE_T:
	.byte	0
	.ascii	"\027Pcairo_path_data_type_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_PATH_DATA_T
_INIT_CAIRO_PCAIRO_PATH_DATA_T:
	.byte	0
	.ascii	"\022Pcairo_path_data_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_PATH_DATA_T
_RTTI_CAIRO_PCAIRO_PATH_DATA_T:
	.byte	0
	.ascii	"\022Pcairo_path_data_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_PATH_T
_INIT_CAIRO_PCAIRO_PATH_T:
	.byte	0
	.ascii	"\015Pcairo_path_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_PATH_T
_RTTI_CAIRO_PCAIRO_PATH_T:
	.byte	0
	.ascii	"\015Pcairo_path_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_RECTANGLE_T
_INIT_CAIRO_PCAIRO_RECTANGLE_T:
	.byte	0
	.ascii	"\022Pcairo_rectangle_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_RECTANGLE_T
_RTTI_CAIRO_PCAIRO_RECTANGLE_T:
	.byte	0
	.ascii	"\022Pcairo_rectangle_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_PCAIRO_RECTANGLE_LIST_T
_INIT_CAIRO_PCAIRO_RECTANGLE_LIST_T:
	.byte	0
	.ascii	"\027Pcairo_rectangle_list_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_PCAIRO_RECTANGLE_LIST_T
_RTTI_CAIRO_PCAIRO_RECTANGLE_LIST_T:
	.byte	0
	.ascii	"\027Pcairo_rectangle_list_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_DESTROY_FUNC_T
_INIT_CAIRO_CAIRO_DESTROY_FUNC_T:
	.byte	23,20
	.ascii	"cairo_destroy_func_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_DESTROY_FUNC_T
_RTTI_CAIRO_CAIRO_DESTROY_FUNC_T:
	.byte	23,20
	.ascii	"cairo_destroy_func_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_WRITE_FUNC_T
_INIT_CAIRO_CAIRO_WRITE_FUNC_T:
	.byte	23,18
	.ascii	"cairo_write_func_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_WRITE_FUNC_T
_RTTI_CAIRO_CAIRO_WRITE_FUNC_T:
	.byte	23,18
	.ascii	"cairo_write_func_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_READ_FUNC_T
_INIT_CAIRO_CAIRO_READ_FUNC_T:
	.byte	23,17
	.ascii	"cairo_read_func_t"

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_READ_FUNC_T
_RTTI_CAIRO_CAIRO_READ_FUNC_T:
	.byte	23,17
	.ascii	"cairo_read_func_t"

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_T
_INIT_CAIRO_CAIRO_T:
	.byte	13,7
	.ascii	"cairo_t"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_T
_RTTI_CAIRO_CAIRO_T:
	.byte	13,7
	.ascii	"cairo_t"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_SURFACE_T
_INIT_CAIRO_CAIRO_SURFACE_T:
	.byte	13,15
	.ascii	"cairo_surface_t"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SURFACE_T
_RTTI_CAIRO_CAIRO_SURFACE_T:
	.byte	13,15
	.ascii	"cairo_surface_t"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_PATTERN_T
_INIT_CAIRO_CAIRO_PATTERN_T:
	.byte	13,15
	.ascii	"cairo_pattern_t"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATTERN_T
_RTTI_CAIRO_CAIRO_PATTERN_T:
	.byte	13,15
	.ascii	"cairo_pattern_t"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_SCALED_FONT_T
_INIT_CAIRO_CAIRO_SCALED_FONT_T:
	.byte	13,19
	.ascii	"cairo_scaled_font_t"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_SCALED_FONT_T
_RTTI_CAIRO_CAIRO_SCALED_FONT_T:
	.byte	13,19
	.ascii	"cairo_scaled_font_t"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FONT_FACE_T
_INIT_CAIRO_CAIRO_FONT_FACE_T:
	.byte	13,17
	.ascii	"cairo_font_face_t"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_FACE_T
_RTTI_CAIRO_CAIRO_FONT_FACE_T:
	.byte	13,17
	.ascii	"cairo_font_face_t"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FONT_OPTIONS_T
_INIT_CAIRO_CAIRO_FONT_OPTIONS_T:
	.byte	13,20
	.ascii	"cairo_font_options_t"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_OPTIONS_T
_RTTI_CAIRO_CAIRO_FONT_OPTIONS_T:
	.byte	13,20
	.ascii	"cairo_font_options_t"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_MATRIX_T
_INIT_CAIRO_CAIRO_MATRIX_T:
	.byte	13,14
	.ascii	"cairo_matrix_t"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_MATRIX_T
_RTTI_CAIRO_CAIRO_MATRIX_T:
	.byte	13,14
	.ascii	"cairo_matrix_t"
	.long	48,6
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_SYSTEM_DOUBLE
	.long	32
	.long	_RTTI_SYSTEM_DOUBLE
	.long	40

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_USER_DATA_KEY_T
_INIT_CAIRO_CAIRO_USER_DATA_KEY_T:
	.byte	13,21
	.ascii	"cairo_user_data_key_t"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_USER_DATA_KEY_T
_RTTI_CAIRO_CAIRO_USER_DATA_KEY_T:
	.byte	13,21
	.ascii	"cairo_user_data_key_t"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGINT
	.long	0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_GLYPH_T
_INIT_CAIRO_CAIRO_GLYPH_T:
	.byte	13,13
	.ascii	"cairo_glyph_t"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_GLYPH_T
_RTTI_CAIRO_CAIRO_GLYPH_T:
	.byte	13,13
	.ascii	"cairo_glyph_t"
	.long	20,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	4
	.long	_RTTI_SYSTEM_DOUBLE
	.long	12

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_TEXT_EXTENTS_T
_INIT_CAIRO_CAIRO_TEXT_EXTENTS_T:
	.byte	13,20
	.ascii	"cairo_text_extents_t"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_TEXT_EXTENTS_T
_RTTI_CAIRO_CAIRO_TEXT_EXTENTS_T:
	.byte	13,20
	.ascii	"cairo_text_extents_t"
	.long	48,6
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_SYSTEM_DOUBLE
	.long	32
	.long	_RTTI_SYSTEM_DOUBLE
	.long	40

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_FONT_EXTENTS_T
_INIT_CAIRO_CAIRO_FONT_EXTENTS_T:
	.byte	13,20
	.ascii	"cairo_font_extents_t"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_FONT_EXTENTS_T
_RTTI_CAIRO_CAIRO_FONT_EXTENTS_T:
	.byte	13,20
	.ascii	"cairo_font_extents_t"
	.long	40,5
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24
	.long	_RTTI_SYSTEM_DOUBLE
	.long	32

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_PATH_DATA_T
_INIT_CAIRO_CAIRO_PATH_DATA_T:
	.byte	13,17
	.ascii	"cairo_path_data_t"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_DEF56
_RTTI_CAIRO_DEF56:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_CAIRO_CAIRO_PATH_DATA_TYPE_T
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_RTTI_CAIRO_DEF57
_RTTI_CAIRO_DEF57:
	.byte	13
	.ascii	"\000"
	.long	16,2
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATH_DATA_T
_RTTI_CAIRO_CAIRO_PATH_DATA_T:
	.byte	13,17
	.ascii	"cairo_path_data_t"
	.long	16,2
	.long	_RTTI_CAIRO_DEF56
	.long	0
	.long	_RTTI_CAIRO_DEF57
	.long	0

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_PATH_T
_INIT_CAIRO_CAIRO_PATH_T:
	.byte	13,12
	.ascii	"cairo_path_t"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_PATH_T
_RTTI_CAIRO_CAIRO_PATH_T:
	.byte	13,12
	.ascii	"cairo_path_t"
	.long	12,3
	.long	_RTTI_CAIRO_CAIRO_STATUS_T
	.long	0
	.long	_RTTI_CAIRO_PCAIRO_PATH_DATA_T
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_RECTANGLE_T
_INIT_CAIRO_CAIRO_RECTANGLE_T:
	.byte	13,17
	.ascii	"cairo_rectangle_t"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_RECTANGLE_T
_RTTI_CAIRO_CAIRO_RECTANGLE_T:
	.byte	13,17
	.ascii	"cairo_rectangle_t"
	.long	32,4
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	16
	.long	_RTTI_SYSTEM_DOUBLE
	.long	24

.const_data
	.align 2
.globl	_INIT_CAIRO_CAIRO_RECTANGLE_LIST_T
_INIT_CAIRO_CAIRO_RECTANGLE_LIST_T:
	.byte	13,22
	.ascii	"cairo_rectangle_list_t"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_CAIRO_CAIRO_RECTANGLE_LIST_T
_RTTI_CAIRO_CAIRO_RECTANGLE_LIST_T:
	.byte	13,22
	.ascii	"cairo_rectangle_list_t"
	.long	12,3
	.long	_RTTI_CAIRO_CAIRO_STATUS_T
	.long	0
	.long	_RTTI_CAIRO_PCAIRO_RECTANGLE_T
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
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

