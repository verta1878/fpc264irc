# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCAPIMIN_JPEG_CREATE_COMPRESS$J_COMPRESS_PTR
_JCAPIMIN_JPEG_CREATE_COMPRESS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$356,%ecx
	movl	$62,%edx
	call	L_JCAPIMIN_JPEG_CREATECOMPRESS$J_COMPRESS_PTR$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_CREATECOMPRESS$J_COMPRESS_PTR$LONGINT$LONGINT
_JCAPIMIN_JPEG_CREATECOMPRESS$J_COMPRESS_PTR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	cmpl	$62,%eax
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$62,%ecx
	movb	$12,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj16:
	movl	-12(%ebp),%eax
	cmpl	$356,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$356,%ecx
	movb	$21,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj26:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	$356,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movb	$0,16(%eax)
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR$stub
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj57:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,68(%edx,%eax,4)
	cmpl	$3,-16(%ebp)
	jl	Lj57
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj62:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,84(%eax,%edx,4)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,100(%eax,%edx,4)
	cmpl	$3,-16(%ebp)
	jl	Lj62
	movl	-4(%ebp),%eax
	movl	$0,348(%eax)
	movl	-4(%ebp),%eax
	fld1
	fstpl	44(%eax)
	movl	-4(%ebp),%eax
	movl	$100,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_DESTROY_COMPRESS$J_COMPRESS_PTR
_JCAPIMIN_JPEG_DESTROY_COMPRESS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_ABORT_COMPRESS$J_COMPRESS_PTR
_JCAPIMIN_JPEG_ABORT_COMPRESS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN
_JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj85:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	68(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj88
	jmp	Lj89
Lj88:
	movl	-16(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,128(%eax)
Lj89:
	cmpl	$3,-12(%ebp)
	jl	Lj85
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj94:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	84(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj97
	jmp	Lj98
Lj97:
	movl	-20(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,273(%eax)
Lj98:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	100(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj103
	jmp	Lj104
Lj103:
	movl	-20(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,273(%eax)
Lj104:
	cmpl	$3,-12(%ebp)
	jl	Lj94
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_FINISH_COMPRESS$J_COMPRESS_PTR
_JCAPIMIN_JPEG_FINISH_COMPRESS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$101,%eax
	je	Lj109
	jmp	Lj111
Lj111:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$102,%eax
	je	Lj109
	jmp	Lj110
Lj109:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	204(%eax),%eax
	cmpl	32(%edx),%eax
	jb	Lj112
	jmp	Lj113
Lj112:
	movl	-4(%ebp),%eax
	movb	$68,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj113:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	312(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	jmp	Lj120
Lj110:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$103,%eax
	jne	Lj121
	jmp	Lj122
Lj121:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj122:
Lj120:
	jmp	Lj130
	.align 2
Lj129:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	312(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	220(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jb	Lj135
	decl	-8(%ebp)
	.align 2
Lj136:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj137
	jmp	Lj138
Lj137:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	220(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj138:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj145
	jmp	Lj146
Lj145:
	movl	-4(%ebp),%eax
	movb	$24,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj146:
	cmpl	-8(%ebp),%ebx
	ja	Lj136
Lj135:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	312(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
Lj130:
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	cmpb	$0,13(%eax)
	jne	Lj131
	jmp	Lj129
Lj131:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	12(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_WRITE_MARKER$J_COMPRESS_PTR$LONGINT$JOCTETPTR$LONGWORD
_JCAPIMIN_JPEG_WRITE_MARKER$J_COMPRESS_PTR$LONGINT$JOCTETPTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	204(%eax),%eax
	testl	%eax,%eax
	jne	Lj165
	jmp	Lj167
Lj167:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$101,%eax
	jne	Lj169
	jmp	Lj166
Lj169:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$102,%eax
	jne	Lj168
	jmp	Lj166
Lj168:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$103,%eax
	jne	Lj165
	jmp	Lj166
Lj165:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj166:
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	328(%ebx),%ebx
	movl	20(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%eax
	movl	328(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj185
	.align 2
Lj184:
	decl	8(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	*%ecx
	incl	-12(%ebp)
Lj185:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj184
	jmp	Lj186
Lj186:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_WRITE_M_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD
_JCAPIMIN_JPEG_WRITE_M_HEADER$J_COMPRESS_PTR$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	204(%eax),%eax
	testl	%eax,%eax
	jne	Lj193
	jmp	Lj195
Lj195:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$101,%eax
	jne	Lj197
	jmp	Lj194
Lj197:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$102,%eax
	jne	Lj196
	jmp	Lj194
Lj196:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$103,%eax
	jne	Lj193
	jmp	Lj194
Lj193:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj194:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	328(%ebx),%ebx
	movl	20(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_WRITE_M_BYTE$J_COMPRESS_PTR$LONGINT
_JCAPIMIN_JPEG_WRITE_M_BYTE$J_COMPRESS_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	328(%ecx),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JCAPIMIN_JPEG_WRITE_TABLES$J_COMPRESS_PTR
_JCAPIMIN_JPEG_WRITE_TABLES$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj218
	jmp	Lj219
Lj218:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj219:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	call	L_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCAPIMIN
_THREADVARLIST_JCAPIMIN:
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

L_JCAPIMIN_JPEG_CREATECOMPRESS$J_COMPRESS_PTR$LONGINT$LONGINT$stub:
.indirect_symbol _JCAPIMIN_JPEG_CREATECOMPRESS$J_COMPRESS_PTR$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMZERO$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR$stub:
.indirect_symbol _JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_DESTROY$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ABORT$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR
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

