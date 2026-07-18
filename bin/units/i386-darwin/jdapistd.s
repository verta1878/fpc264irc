# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDAPISTD_JPEG_START_DECOMPRESS$J_DECOMPRESS_PTR$$BOOLEAN
_JDAPISTD_JPEG_START_DECOMPRESS$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$202,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	call	L_JDMASTER_JINIT_MASTER_DECOMPRESS$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	cmpb	$0,60(%eax)
	jne	Lj9
	jmp	Lj10
Lj9:
	movl	-4(%ebp),%eax
	movl	$207,20(%eax)
	movb	$1,-5(%ebp)
	jmp	Lj3
Lj10:
	movl	-4(%ebp),%eax
	movl	$203,20(%eax)
Lj6:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$203,%eax
	je	Lj17
	jmp	Lj18
Lj17:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	cmpb	$0,16(%eax)
	jne	Lj19
	jmp	Lj20
Lj19:
	jmp	Lj22
	.align 2
Lj21:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj24
	jmp	Lj25
Lj24:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj25:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj32
	jmp	Lj33
Lj32:
	movb	$0,-5(%ebp)
	jmp	Lj3
Lj33:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj36
	jmp	Lj37
Lj36:
	jmp	Lj23
Lj37:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj40
	jmp	Lj39
Lj40:
	movl	-12(%ebp),%eax
	cmpl	$3,%eax
	je	Lj38
	jmp	Lj41
Lj41:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj38
	jmp	Lj39
Lj38:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	4(%edx),%eax
	cmpl	8(%ecx),%eax
	jge	Lj42
	jmp	Lj43
Lj42:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	268(%ecx),%eax
	addl	%eax,8(%edx)
Lj43:
Lj39:
Lj22:
	jmp	Lj21
Lj23:
Lj20:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,116(%edx)
	jmp	Lj46
Lj18:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$204,%eax
	jne	Lj47
	jmp	Lj48
Lj47:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj48:
Lj46:
	movl	-4(%ebp),%eax
	call	L_JDAPISTD_OUTPUT_PASS_SETUP$J_DECOMPRESS_PTR$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj3:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDAPISTD_OUTPUT_PASS_SETUP$J_DECOMPRESS_PTR$$BOOLEAN
_JDAPISTD_OUTPUT_PASS_SETUP$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$204,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$0,104(%eax)
	movl	-4(%ebp),%eax
	movl	$204,20(%eax)
Lj62:
	jmp	Lj70
	.align 2
Lj69:
	jmp	Lj73
	.align 2
Lj72:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj76:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	leal	104(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	372(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj93
	jmp	Lj94
Lj93:
	movb	$0,-5(%ebp)
	jmp	Lj59
Lj94:
Lj73:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	104(%eax),%eax
	cmpl	80(%edx),%eax
	jb	Lj72
	jmp	Lj74
Lj74:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$0,104(%eax)
Lj70:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	cmpb	$0,8(%eax)
	jne	Lj69
	jmp	Lj71
Lj71:
	movl	-4(%ebp),%eax
	cmpb	$0,61(%eax)
	jne	Lj103
	jmp	Lj104
Lj103:
	movl	-4(%ebp),%eax
	movl	$206,20(%eax)
	jmp	Lj107
Lj104:
	movl	-4(%ebp),%eax
	movl	$205,20(%eax)
Lj107:
	movb	$1,-5(%ebp)
Lj59:
	movb	-5(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDAPISTD_JPEG_READ_SCANLINES$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$$LONGWORD
_JDAPISTD_JPEG_READ_SCANLINES$J_DECOMPRESS_PTR$JSAMPARRAY$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$205,%eax
	jne	Lj114
	jmp	Lj115
Lj114:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj115:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	104(%eax),%eax
	cmpl	80(%edx),%eax
	jae	Lj122
	jmp	Lj123
Lj122:
	movl	-4(%ebp),%eax
	movb	$124,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
	movl	$0,-16(%ebp)
	jmp	Lj112
Lj123:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj130
	jmp	Lj131
Lj130:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj131:
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	372(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,104(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj112:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDAPISTD_JPEG_READ_RAW_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$$LONGWORD
_JDAPISTD_JPEG_READ_RAW_DATA$J_DECOMPRESS_PTR$JSAMPIMAGE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$206,%eax
	jne	Lj152
	jmp	Lj153
Lj152:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj153:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	104(%eax),%eax
	cmpl	80(%edx),%eax
	jae	Lj160
	jmp	Lj161
Lj160:
	movl	-4(%ebp),%eax
	movb	$124,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
	movl	$0,-16(%ebp)
	jmp	Lj150
Lj161:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj168
	jmp	Lj169
Lj168:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj169:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	260(%eax),%edx
	movl	264(%ecx),%eax
	imull	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj178
	jmp	Lj179
Lj178:
	movl	-4(%ebp),%eax
	movb	$23,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj179:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	376(%ecx),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj184
	jmp	Lj185
Lj184:
	movl	$0,-16(%ebp)
	jmp	Lj150
Lj185:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,104(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj150:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDAPISTD_JPEG_START_OUTPUT$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN
_JDAPISTD_JPEG_START_OUTPUT$J_DECOMPRESS_PTR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$207,%eax
	jne	Lj198
	jmp	Lj197
Lj198:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$204,%eax
	jne	Lj196
	jmp	Lj197
Lj196:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj197:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj205
	jmp	Lj206
Lj205:
	movl	$1,-8(%ebp)
Lj206:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	cmpb	$0,17(%eax)
	jne	Lj211
	jmp	Lj210
Lj211:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj209
	jmp	Lj210
Lj209:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,-8(%ebp)
Lj210:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,116(%eax)
	movl	-4(%ebp),%eax
	call	L_JDAPISTD_OUTPUT_PASS_SETUP$J_DECOMPRESS_PTR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDAPISTD_JPEG_FINISH_OUTPUT$J_DECOMPRESS_PTR$$BOOLEAN
_JDAPISTD_JPEG_FINISH_OUTPUT$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$205,%eax
	je	Lj222
	jmp	Lj224
Lj224:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$206,%eax
	je	Lj225
	jmp	Lj223
Lj225:
	movl	-4(%ebp),%eax
	cmpb	$0,60(%eax)
	jne	Lj222
	jmp	Lj223
Lj222:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$208,20(%eax)
	jmp	Lj230
Lj223:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$208,%eax
	jne	Lj231
	jmp	Lj232
Lj231:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj232:
Lj230:
	jmp	Lj240
	.align 2
Lj239:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	testl	%eax,%eax
	je	Lj242
	jmp	Lj243
Lj242:
	movb	$0,-5(%ebp)
	jmp	Lj220
Lj243:
Lj240:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	108(%eax),%eax
	cmpl	116(%edx),%eax
	jle	Lj248
	jmp	Lj241
Lj248:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	17(%eax),%al
	testb	%al,%al
	je	Lj239
	jmp	Lj241
Lj241:
	movl	-4(%ebp),%eax
	movl	$207,20(%eax)
	movb	$1,-5(%ebp)
Lj220:
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDAPISTD
_THREADVARLIST_JDAPISTD:
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

L_JDMASTER_JINIT_MASTER_DECOMPRESS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMASTER_JINIT_MASTER_DECOMPRESS$J_DECOMPRESS_PTR
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

L_JDAPISTD_OUTPUT_PASS_SETUP$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDAPISTD_OUTPUT_PASS_SETUP$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE
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

