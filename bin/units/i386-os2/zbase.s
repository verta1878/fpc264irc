	.file "zbase.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	ZBASE_ZERROR$LONGINT$$SHORTSTRING
ZBASE_ZERROR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-6,%eax
	je	Lj7
	cmpl	$-5,%eax
	je	Lj8
	cmpl	$-4,%eax
	je	Lj9
	cmpl	$-3,%eax
	je	Lj10
	cmpl	$-2,%eax
	je	Lj11
	cmpl	$-1,%eax
	je	Lj12
	testl	%eax,%eax
	je	Lj13
	cmpl	$1,%eax
	je	Lj14
	cmpl	$2,%eax
	je	Lj15
	jmp	Lj6
Lj7:
	movl	RESSTR_ZBASE_SVERSION_ERROR+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj8:
	movl	RESSTR_ZBASE_SBUF_ERROR+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj9:
	movl	RESSTR_ZBASE_SMEM_ERROR+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj10:
	movl	RESSTR_ZBASE_SDATA_ERROR+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj11:
	movl	RESSTR_ZBASE_SSTREAM_ERROR+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj12:
	movl	RESSTR_ZBASE_SFILE_ERROR+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj13:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj5
Lj14:
	movl	RESSTR_ZBASE_SSTREAM_END+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj15:
	movl	RESSTR_ZBASE_SNEED_DICT+4,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj5
Lj6:
	pushl	$255
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	$_$ZBASE$_Ld2,%ecx
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj5:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_ZLIBVERSION$$SHORTSTRING
ZBASE_ZLIBVERSION$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	$TC_ZBASE_ZLIB_VERSION,%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret

.text
	.balign 4,0x90
ZBASE_Z_ERROR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj94
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj95
Lj94:
	movl	$U_SYSTEM_OUTPUT+4,%edx
Lj95:
	leal	-260(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj102
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj103
Lj102:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj103:
	call	fpc_writeln_end
	call	FPC_IOCHECK
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$ZBASE$_Ld3,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_write_end
	call	FPC_IOCHECK
	call	fpc_get_input
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	fpc_readln_end
	call	FPC_IOCHECK
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	movl	-264(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
ZBASE_ASSERT$BOOLEAN$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj122
	jmp	Lj123
Lj122:
	leal	-264(%ebp),%eax
	call	ZBASE_Z_ERROR$SHORTSTRING
Lj123:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_TRACE$SHORTSTRING
ZBASE_TRACE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	call	fpc_get_output
	movl	%eax,%ebx
	leal	-260(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movl	-264(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_TRACEV$SHORTSTRING
ZBASE_TRACEV$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	call	fpc_get_output
	movl	%eax,%ebx
	leal	-260(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movl	-264(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_TRACEVV$SHORTSTRING
ZBASE_TRACEVV$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_TRACEVVV$SHORTSTRING
ZBASE_TRACEVVV$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_TRACEC$BOOLEAN$SHORTSTRING
ZBASE_TRACEC$BOOLEAN$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	jmp	Lj158
Lj158:
	cmpb	$0,-4(%ebp)
	jne	Lj156
	jmp	Lj157
Lj156:
	call	fpc_get_output
	movl	%eax,%ebx
	leal	-264(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
Lj157:
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZBASE_TRACECV$BOOLEAN$SHORTSTRING
ZBASE_TRACECV$BOOLEAN$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	jmp	Lj172
	cmpb	$0,-4(%ebp)
	jne	Lj171
	jmp	Lj172
Lj171:
	call	fpc_get_output
	movl	%eax,%ebx
	leal	-264(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
Lj172:
	movl	-268(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_ZBASE
THREADVARLIST_ZBASE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$ZBASE$_Ld4
_$ZBASE$_Ld4:
	.ascii	"ZBASE\000"

.data
	.balign 4
	.short	0,1
	.long	-1,15
.globl	_$ZBASE$_Ld5
_$ZBASE$_Ld5:
	.ascii	"need dictionary\000"
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$ZBASE$_Ld6
_$ZBASE$_Ld6:
	.ascii	"zbase.sneed_dict\000"

.data
	.balign 4
	.short	0,1
	.long	-1,10
.globl	_$ZBASE$_Ld7
_$ZBASE$_Ld7:
	.ascii	"stream end\000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$ZBASE$_Ld8
_$ZBASE$_Ld8:
	.ascii	"zbase.sstream_end\000"

.data
	.balign 4
	.short	0,1
	.long	-1,10
.globl	_$ZBASE$_Ld9
_$ZBASE$_Ld9:
	.ascii	"file error\000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$ZBASE$_Ld10
_$ZBASE$_Ld10:
	.ascii	"zbase.sfile_error\000"

.data
	.balign 4
	.short	0,1
	.long	-1,12
.globl	_$ZBASE$_Ld11
_$ZBASE$_Ld11:
	.ascii	"stream error\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$ZBASE$_Ld12
_$ZBASE$_Ld12:
	.ascii	"zbase.sstream_error\000"

.data
	.balign 4
	.short	0,1
	.long	-1,10
.globl	_$ZBASE$_Ld13
_$ZBASE$_Ld13:
	.ascii	"data error\000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$ZBASE$_Ld14
_$ZBASE$_Ld14:
	.ascii	"zbase.sdata_error\000"

.data
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$ZBASE$_Ld15
_$ZBASE$_Ld15:
	.ascii	"insufficient memory\000"
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$ZBASE$_Ld16
_$ZBASE$_Ld16:
	.ascii	"zbase.smem_error\000"

.data
	.balign 4
	.short	0,1
	.long	-1,12
.globl	_$ZBASE$_Ld17
_$ZBASE$_Ld17:
	.ascii	"buffer error\000"
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$ZBASE$_Ld18
_$ZBASE$_Ld18:
	.ascii	"zbase.sbuf_error\000"

.data
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$ZBASE$_Ld19
_$ZBASE$_Ld19:
	.ascii	"incompatible version\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$ZBASE$_Ld20
_$ZBASE$_Ld20:
	.ascii	"zbase.sversion_error\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	TC_ZBASE_ZLIB_VERSION
TC_ZBASE_ZLIB_VERSION:
	.byte	5
	.ascii	"1.1.2"
	.ascii	"     "

.data
	.balign 4
.globl	_$ZBASE$_Ld1
_$ZBASE$_Ld1:
	.ascii	"\000\000"

.data
	.balign 4
.globl	_$ZBASE$_Ld2
_$ZBASE$_Ld2:
	.ascii	"\023Unknown zlib error \000"

.data
	.balign 4
.globl	_$ZBASE$_Ld3
_$ZBASE$_Ld3:
	.ascii	"\016Zlib - Halt...\000"
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
.globl	INIT_ZBASE_PBYTEARRAY
INIT_ZBASE_PBYTEARRAY:
	.byte	0
	.ascii	"\012Pbytearray"

.data
	.balign 4
.globl	RTTI_ZBASE_PBYTEARRAY
RTTI_ZBASE_PBYTEARRAY:
	.byte	0
	.ascii	"\012Pbytearray"

.data
	.balign 4
.globl	INIT_ZBASE_PWORDARRAY
INIT_ZBASE_PWORDARRAY:
	.byte	0
	.ascii	"\012Pwordarray"

.data
	.balign 4
.globl	RTTI_ZBASE_PWORDARRAY
RTTI_ZBASE_PWORDARRAY:
	.byte	0
	.ascii	"\012Pwordarray"

.data
	.balign 4
.globl	INIT_ZBASE_PCARDINALARRAY
INIT_ZBASE_PCARDINALARRAY:
	.byte	0
	.ascii	"\016Pcardinalarray"

.data
	.balign 4
.globl	RTTI_ZBASE_PCARDINALARRAY
RTTI_ZBASE_PCARDINALARRAY:
	.byte	0
	.ascii	"\016Pcardinalarray"

.data
	.balign 4
.globl	INIT_ZBASE_TBYTEARRAY
INIT_ZBASE_TBYTEARRAY:
	.byte	12
	.ascii	"\012Tbytearray"
	.long	1,2147483647
	.long	INIT_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_ZBASE_TBYTEARRAY
RTTI_ZBASE_TBYTEARRAY:
	.byte	12
	.ascii	"\012Tbytearray"
	.long	1,2147483647
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	INIT_ZBASE_TWORDARRAY
INIT_ZBASE_TWORDARRAY:
	.byte	12
	.ascii	"\012Twordarray"
	.long	2,1073741823
	.long	INIT_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_ZBASE_TWORDARRAY
RTTI_ZBASE_TWORDARRAY:
	.byte	12
	.ascii	"\012Twordarray"
	.long	2,1073741823
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	INIT_ZBASE_TINTEGERARRAY
INIT_ZBASE_TINTEGERARRAY:
	.byte	12
	.ascii	"\015Tintegerarray"
	.long	4,536870911
	.long	INIT_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	RTTI_ZBASE_TINTEGERARRAY
RTTI_ZBASE_TINTEGERARRAY:
	.byte	12
	.ascii	"\015Tintegerarray"
	.long	4,536870911
	.long	RTTI_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	INIT_ZBASE_TCARDINALARRAY
INIT_ZBASE_TCARDINALARRAY:
	.byte	12
	.ascii	"\016Tcardinalarray"
	.long	4,536870911
	.long	INIT_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	RTTI_ZBASE_TCARDINALARRAY
RTTI_ZBASE_TCARDINALARRAY:
	.byte	12
	.ascii	"\016Tcardinalarray"
	.long	4,536870911
	.long	RTTI_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	INIT_ZBASE_PINFLATE_HUFT
INIT_ZBASE_PINFLATE_HUFT:
	.byte	0
	.ascii	"\015pInflate_huft"

.data
	.balign 4
.globl	RTTI_ZBASE_PINFLATE_HUFT
RTTI_ZBASE_PINFLATE_HUFT:
	.byte	0
	.ascii	"\015pInflate_huft"

.data
	.balign 4
.globl	INIT_ZBASE_INFLATE_HUFT
INIT_ZBASE_INFLATE_HUFT:
	.byte	13,12
	.ascii	"inflate_huft"
	.long	8,0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_HUFT
RTTI_ZBASE_INFLATE_HUFT:
	.byte	13,12
	.ascii	"inflate_huft"
	.long	8,3
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	INIT_ZBASE_HUFT_FIELD
INIT_ZBASE_HUFT_FIELD:
	.byte	12
	.ascii	"\012huft_field"
	.long	8,268435455
	.long	INIT_ZBASE_INFLATE_HUFT
	.long	-1

.data
	.balign 4
.globl	RTTI_ZBASE_HUFT_FIELD
RTTI_ZBASE_HUFT_FIELD:
	.byte	12
	.ascii	"\012huft_field"
	.long	8,268435455
	.long	RTTI_ZBASE_INFLATE_HUFT
	.long	-1

.data
	.balign 4
.globl	INIT_ZBASE_HUFT_PTR
INIT_ZBASE_HUFT_PTR:
	.byte	0
	.ascii	"\010huft_ptr"

.data
	.balign 4
.globl	RTTI_ZBASE_HUFT_PTR
RTTI_ZBASE_HUFT_PTR:
	.byte	0
	.ascii	"\010huft_ptr"

.data
	.balign 4
.globl	INIT_ZBASE_PPINFLATE_HUFT
INIT_ZBASE_PPINFLATE_HUFT:
	.byte	0
	.ascii	"\016ppInflate_huft"

.data
	.balign 4
.globl	RTTI_ZBASE_PPINFLATE_HUFT
RTTI_ZBASE_PPINFLATE_HUFT:
	.byte	0
	.ascii	"\016ppInflate_huft"

.data
	.balign 4
.globl	INIT_ZBASE_INFLATE_CODES_MODE
INIT_ZBASE_INFLATE_CODES_MODE:
	.byte	3,18
	.ascii	"inflate_codes_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"START"
	.byte	3
	.ascii	"LEN"
	.byte	6
	.ascii	"LENEXT"
	.byte	4
	.ascii	"DIST"
	.byte	7
	.ascii	"DISTEXT"
	.byte	4
	.ascii	"COPY"
	.byte	3
	.ascii	"LIT"
	.byte	4
	.ascii	"WASH"
	.byte	4
	.ascii	"ZEND"
	.byte	7
	.ascii	"BADCODE"
	.byte	5
	.ascii	"zbase"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_CODES_MODE
RTTI_ZBASE_INFLATE_CODES_MODE:
	.byte	3,18
	.ascii	"inflate_codes_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"START"
	.byte	3
	.ascii	"LEN"
	.byte	6
	.ascii	"LENEXT"
	.byte	4
	.ascii	"DIST"
	.byte	7
	.ascii	"DISTEXT"
	.byte	4
	.ascii	"COPY"
	.byte	3
	.ascii	"LIT"
	.byte	4
	.ascii	"WASH"
	.byte	4
	.ascii	"ZEND"
	.byte	7
	.ascii	"BADCODE"
	.byte	5
	.ascii	"zbase"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_CODES_MODE_s2o
RTTI_ZBASE_INFLATE_CODES_MODE_s2o:
	.long	10,9
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+82
	.long	5
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+63
	.long	3
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+50
	.long	4
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+55
	.long	1
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+39
	.long	2
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+43
	.long	6
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+68
	.long	0
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+33
	.long	7
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+72
	.long	8
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+77

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_CODES_MODE_o2s
RTTI_ZBASE_INFLATE_CODES_MODE_o2s:
	.long	0
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+33
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+39
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+43
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+50
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+55
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+63
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+68
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+72
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+77
	.long	RTTI_ZBASE_INFLATE_CODES_MODE+82

.data
	.balign 4
.globl	INIT_ZBASE_PINFLATE_CODES_STATE
INIT_ZBASE_PINFLATE_CODES_STATE:
	.byte	0
	.ascii	"\024pInflate_codes_state"

.data
	.balign 4
.globl	RTTI_ZBASE_PINFLATE_CODES_STATE
RTTI_ZBASE_PINFLATE_CODES_STATE:
	.byte	0
	.ascii	"\024pInflate_codes_state"

.data
	.balign 4
.globl	INIT_ZBASE_INFLATE_CODES_STATE
INIT_ZBASE_INFLATE_CODES_STATE:
	.byte	13,19
	.ascii	"inflate_codes_state"
	.long	28,0

.data
	.balign 4
.globl	RTTI_ZBASE_DEF17
RTTI_ZBASE_DEF17:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	RTTI_ZBASE_PINFLATE_HUFT
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	RTTI_ZBASE_DEF18
RTTI_ZBASE_DEF18:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	RTTI_ZBASE_DEF15
RTTI_ZBASE_DEF15:
	.byte	13
	.ascii	"\000"
	.long	8,3
	.long	RTTI_ZBASE_DEF17
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_ZBASE_DEF18
	.long	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_CODES_STATE
RTTI_ZBASE_INFLATE_CODES_STATE:
	.byte	13,19
	.ascii	"inflate_codes_state"
	.long	28,7
	.long	RTTI_ZBASE_INFLATE_CODES_MODE
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_ZBASE_DEF15
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	16
	.long	RTTI_SYSTEM_BYTE
	.long	17
	.long	RTTI_ZBASE_PINFLATE_HUFT
	.long	20
	.long	RTTI_ZBASE_PINFLATE_HUFT
	.long	24

.data
	.balign 4
.globl	INIT_ZBASE_CHECK_FUNC
INIT_ZBASE_CHECK_FUNC:
	.byte	23,10
	.ascii	"check_func"

.data
	.balign 4
.globl	RTTI_ZBASE_CHECK_FUNC
RTTI_ZBASE_CHECK_FUNC:
	.byte	23,10
	.ascii	"check_func"

.data
	.balign 4
.globl	INIT_ZBASE_INFLATE_BLOCK_MODE
INIT_ZBASE_INFLATE_BLOCK_MODE:
	.byte	3,18
	.ascii	"inflate_block_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"ZTYPE"
	.byte	4
	.ascii	"LENS"
	.byte	6
	.ascii	"STORED"
	.byte	5
	.ascii	"TABLE"
	.byte	5
	.ascii	"BTREE"
	.byte	5
	.ascii	"DTREE"
	.byte	5
	.ascii	"CODES"
	.byte	3
	.ascii	"DRY"
	.byte	7
	.ascii	"BLKDONE"
	.byte	6
	.ascii	"BLKBAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_BLOCK_MODE
RTTI_ZBASE_INFLATE_BLOCK_MODE:
	.byte	3,18
	.ascii	"inflate_block_mode"
	.byte	5
	.long	0,9,0
	.byte	5
	.ascii	"ZTYPE"
	.byte	4
	.ascii	"LENS"
	.byte	6
	.ascii	"STORED"
	.byte	5
	.ascii	"TABLE"
	.byte	5
	.ascii	"BTREE"
	.byte	5
	.ascii	"DTREE"
	.byte	5
	.ascii	"CODES"
	.byte	3
	.ascii	"DRY"
	.byte	7
	.ascii	"BLKDONE"
	.byte	6
	.ascii	"BLKBAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_BLOCK_MODE_s2o
RTTI_ZBASE_INFLATE_BLOCK_MODE_s2o:
	.long	10,9
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+87
	.long	8
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+79
	.long	4
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+57
	.long	6
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+69
	.long	7
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+75
	.long	5
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+63
	.long	1
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+39
	.long	2
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+44
	.long	3
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+51
	.long	0
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+33

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_BLOCK_MODE_o2s
RTTI_ZBASE_INFLATE_BLOCK_MODE_o2s:
	.long	0
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+33
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+39
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+44
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+51
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+57
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+63
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+69
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+75
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+79
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE+87

.data
	.balign 4
.globl	INIT_ZBASE_PINFLATE_BLOCKS_STATE
INIT_ZBASE_PINFLATE_BLOCKS_STATE:
	.byte	0
	.ascii	"\025pInflate_blocks_state"

.data
	.balign 4
.globl	RTTI_ZBASE_PINFLATE_BLOCKS_STATE
RTTI_ZBASE_PINFLATE_BLOCKS_STATE:
	.byte	0
	.ascii	"\025pInflate_blocks_state"

.data
	.balign 4
.globl	INIT_ZBASE_INFLATE_BLOCKS_STATE
INIT_ZBASE_INFLATE_BLOCKS_STATE:
	.byte	13,20
	.ascii	"inflate_blocks_state"
	.long	64,0

.data
	.balign 4
.globl	RTTI_ZBASE_DEF25
RTTI_ZBASE_DEF25:
	.byte	13
	.ascii	"\000"
	.long	20,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_ZBASE_PCARDINALARRAY
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_ZBASE_PINFLATE_HUFT
	.long	16

.data
	.balign 4
.globl	RTTI_ZBASE_DEF26
RTTI_ZBASE_DEF26:
	.byte	13
	.ascii	"\000"
	.long	12,3
	.long	RTTI_ZBASE_PINFLATE_HUFT
	.long	0
	.long	RTTI_ZBASE_PINFLATE_HUFT
	.long	4
	.long	RTTI_ZBASE_PINFLATE_CODES_STATE
	.long	8

.data
	.balign 4
.globl	RTTI_ZBASE_DEF23
RTTI_ZBASE_DEF23:
	.byte	13
	.ascii	"\000"
	.long	20,3
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_ZBASE_DEF25
	.long	0
	.long	RTTI_ZBASE_DEF26
	.long	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_BLOCKS_STATE
RTTI_ZBASE_INFLATE_BLOCKS_STATE:
	.byte	13,20
	.ascii	"inflate_blocks_state"
	.long	64,12
	.long	RTTI_ZBASE_INFLATE_BLOCK_MODE
	.long	0
	.long	RTTI_ZBASE_DEF23
	.long	4
	.long	RTTI_SYSTEM_BOOLEAN
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_ZBASE_HUFT_PTR
	.long	36
	.long	RTTI_SYSTEM_PBYTE
	.long	40
	.long	RTTI_SYSTEM_PBYTE
	.long	44
	.long	RTTI_SYSTEM_PBYTE
	.long	48
	.long	RTTI_SYSTEM_PBYTE
	.long	52
	.long	RTTI_ZBASE_CHECK_FUNC
	.long	56
	.long	RTTI_SYSTEM_LONGWORD
	.long	60

.data
	.balign 4
.globl	INIT_ZBASE_INFLATE_MODE
INIT_ZBASE_INFLATE_MODE:
	.byte	3,12
	.ascii	"inflate_mode"
	.byte	5
	.long	0,13,0
	.byte	6
	.ascii	"METHOD"
	.byte	4
	.ascii	"FLAG"
	.byte	5
	.ascii	"DICT4"
	.byte	5
	.ascii	"DICT3"
	.byte	5
	.ascii	"DICT2"
	.byte	5
	.ascii	"DICT1"
	.byte	5
	.ascii	"DICT0"
	.byte	6
	.ascii	"BLOCKS"
	.byte	6
	.ascii	"CHECK4"
	.byte	6
	.ascii	"CHECK3"
	.byte	6
	.ascii	"CHECK2"
	.byte	6
	.ascii	"CHECK1"
	.byte	4
	.ascii	"DONE"
	.byte	3
	.ascii	"BAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_MODE
RTTI_ZBASE_INFLATE_MODE:
	.byte	3,12
	.ascii	"inflate_mode"
	.byte	5
	.long	0,13,0
	.byte	6
	.ascii	"METHOD"
	.byte	4
	.ascii	"FLAG"
	.byte	5
	.ascii	"DICT4"
	.byte	5
	.ascii	"DICT3"
	.byte	5
	.ascii	"DICT2"
	.byte	5
	.ascii	"DICT1"
	.byte	5
	.ascii	"DICT0"
	.byte	6
	.ascii	"BLOCKS"
	.byte	6
	.ascii	"CHECK4"
	.byte	6
	.ascii	"CHECK3"
	.byte	6
	.ascii	"CHECK2"
	.byte	6
	.ascii	"CHECK1"
	.byte	4
	.ascii	"DONE"
	.byte	3
	.ascii	"BAD"
	.byte	5
	.ascii	"zbase"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_MODE_s2o
RTTI_ZBASE_INFLATE_MODE_s2o:
	.long	14,13
	.long	RTTI_ZBASE_INFLATE_MODE+109
	.long	7
	.long	RTTI_ZBASE_INFLATE_MODE+69
	.long	11
	.long	RTTI_ZBASE_INFLATE_MODE+97
	.long	10
	.long	RTTI_ZBASE_INFLATE_MODE+90
	.long	9
	.long	RTTI_ZBASE_INFLATE_MODE+83
	.long	8
	.long	RTTI_ZBASE_INFLATE_MODE+76
	.long	6
	.long	RTTI_ZBASE_INFLATE_MODE+63
	.long	5
	.long	RTTI_ZBASE_INFLATE_MODE+57
	.long	4
	.long	RTTI_ZBASE_INFLATE_MODE+51
	.long	3
	.long	RTTI_ZBASE_INFLATE_MODE+45
	.long	2
	.long	RTTI_ZBASE_INFLATE_MODE+39
	.long	12
	.long	RTTI_ZBASE_INFLATE_MODE+104
	.long	1
	.long	RTTI_ZBASE_INFLATE_MODE+34
	.long	0
	.long	RTTI_ZBASE_INFLATE_MODE+27

.data
	.balign 4
.globl	RTTI_ZBASE_INFLATE_MODE_o2s
RTTI_ZBASE_INFLATE_MODE_o2s:
	.long	0
	.long	RTTI_ZBASE_INFLATE_MODE+27
	.long	RTTI_ZBASE_INFLATE_MODE+34
	.long	RTTI_ZBASE_INFLATE_MODE+39
	.long	RTTI_ZBASE_INFLATE_MODE+45
	.long	RTTI_ZBASE_INFLATE_MODE+51
	.long	RTTI_ZBASE_INFLATE_MODE+57
	.long	RTTI_ZBASE_INFLATE_MODE+63
	.long	RTTI_ZBASE_INFLATE_MODE+69
	.long	RTTI_ZBASE_INFLATE_MODE+76
	.long	RTTI_ZBASE_INFLATE_MODE+83
	.long	RTTI_ZBASE_INFLATE_MODE+90
	.long	RTTI_ZBASE_INFLATE_MODE+97
	.long	RTTI_ZBASE_INFLATE_MODE+104
	.long	RTTI_ZBASE_INFLATE_MODE+109

.data
	.balign 4
.globl	INIT_ZBASE_PINTERNAL_STATE
INIT_ZBASE_PINTERNAL_STATE:
	.byte	0
	.ascii	"\017pInternal_state"

.data
	.balign 4
.globl	RTTI_ZBASE_PINTERNAL_STATE
RTTI_ZBASE_PINTERNAL_STATE:
	.byte	0
	.ascii	"\017pInternal_state"

.data
	.balign 4
.globl	INIT_ZBASE_INTERNAL_STATE
INIT_ZBASE_INTERNAL_STATE:
	.byte	13,14
	.ascii	"internal_state"
	.long	24,0

.data
	.balign 4
.globl	RTTI_ZBASE_DEF32
RTTI_ZBASE_DEF32:
	.byte	13
	.ascii	"\000"
	.long	8,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	RTTI_ZBASE_DEF30
RTTI_ZBASE_DEF30:
	.byte	13
	.ascii	"\000"
	.long	8,3
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_ZBASE_DEF32
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0

.data
	.balign 4
.globl	RTTI_ZBASE_INTERNAL_STATE
RTTI_ZBASE_INTERNAL_STATE:
	.byte	13,14
	.ascii	"internal_state"
	.long	24,5
	.long	RTTI_ZBASE_INFLATE_MODE
	.long	0
	.long	RTTI_ZBASE_DEF30
	.long	4
	.long	RTTI_SYSTEM_BOOLEAN
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_ZBASE_PINFLATE_BLOCKS_STATE
	.long	20

.data
	.balign 4
.globl	INIT_ZBASE_Z_STREAMP
INIT_ZBASE_Z_STREAMP:
	.byte	0
	.ascii	"\011z_streamp"

.data
	.balign 4
.globl	RTTI_ZBASE_Z_STREAMP
RTTI_ZBASE_Z_STREAMP:
	.byte	0
	.ascii	"\011z_streamp"

.data
	.balign 4
.globl	INIT_ZBASE_Z_STREAM
INIT_ZBASE_Z_STREAM:
	.byte	13,8
	.ascii	"z_stream"
	.long	296,0

.data
	.balign 4
.globl	RTTI_ZBASE_Z_STREAM
RTTI_ZBASE_Z_STREAM:
	.byte	13,8
	.ascii	"z_stream"
	.long	296,11
	.long	RTTI_SYSTEM_PBYTE
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_PBYTE
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	24
	.long	RTTI_ZBASE_PINTERNAL_STATE
	.long	280
	.long	RTTI_SYSTEM_LONGINT
	.long	284
	.long	RTTI_SYSTEM_LONGWORD
	.long	288
	.long	RTTI_SYSTEM_LONGWORD
	.long	292
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
.globl	RESSTR_ZBASE_START
RESSTR_ZBASE_START:
	.long	_$ZBASE$_Ld4
	.long	0,0,0

.data
	.balign 4
.globl	RESSTR_ZBASE_SNEED_DICT
RESSTR_ZBASE_SNEED_DICT:
	.long	_$ZBASE$_Ld6
	.long	_$ZBASE$_Ld5
	.long	_$ZBASE$_Ld5
	.long	27562889

.data
	.balign 4
.globl	RESSTR_ZBASE_SSTREAM_END
RESSTR_ZBASE_SSTREAM_END:
	.long	_$ZBASE$_Ld8
	.long	_$ZBASE$_Ld7
	.long	_$ZBASE$_Ld7
	.long	192463300

.data
	.balign 4
.globl	RESSTR_ZBASE_SFILE_ERROR
RESSTR_ZBASE_SFILE_ERROR:
	.long	_$ZBASE$_Ld10
	.long	_$ZBASE$_Ld9
	.long	_$ZBASE$_Ld9
	.long	124406082

.data
	.balign 4
.globl	RESSTR_ZBASE_SSTREAM_ERROR
RESSTR_ZBASE_SSTREAM_ERROR:
	.long	_$ZBASE$_Ld12
	.long	_$ZBASE$_Ld11
	.long	_$ZBASE$_Ld11
	.long	147264530

.data
	.balign 4
.globl	RESSTR_ZBASE_SDATA_ERROR
RESSTR_ZBASE_SDATA_ERROR:
	.long	_$ZBASE$_Ld14
	.long	_$ZBASE$_Ld13
	.long	_$ZBASE$_Ld13
	.long	57291202

.data
	.balign 4
.globl	RESSTR_ZBASE_SMEM_ERROR
RESSTR_ZBASE_SMEM_ERROR:
	.long	_$ZBASE$_Ld16
	.long	_$ZBASE$_Ld15
	.long	_$ZBASE$_Ld15
	.long	184500041

.data
	.balign 4
.globl	RESSTR_ZBASE_SBUF_ERROR
RESSTR_ZBASE_SBUF_ERROR:
	.long	_$ZBASE$_Ld18
	.long	_$ZBASE$_Ld17
	.long	_$ZBASE$_Ld17
	.long	49763746

.data
	.balign 4
.globl	RESSTR_ZBASE_SVERSION_ERROR
RESSTR_ZBASE_SVERSION_ERROR:
	.long	_$ZBASE$_Ld20
	.long	_$ZBASE$_Ld19
	.long	_$ZBASE$_Ld19
	.long	43449006

.data
	.balign 4
.globl	RESSTR_ZBASE_END
RESSTR_ZBASE_END:
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

