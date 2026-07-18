# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JFDCTFLT_JPEG_FDCT_FLOAT$array_of_DOUBLE
_JFDCTFLT_JPEG_FDCT_FLOAT$array_of_DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	call	Lj4
Lj4:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-164(%ebp)
	movl	$7,-168(%ebp)
	incl	-168(%ebp)
	.align 2
Lj9:
	decl	-168(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	56(%edx)
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	56(%edx)
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	-72(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	48(%edx)
	fldl	8(%eax)
	faddp	%st,%st(1)
	fstpl	-24(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	48(%edx)
	fldl	8(%eax)
	fsubp	%st,%st(1)
	fstpl	-64(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	40(%edx)
	fldl	16(%eax)
	faddp	%st,%st(1)
	fstpl	-32(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	40(%edx)
	fldl	16(%eax)
	fsubp	%st,%st(1)
	fstpl	-56(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	32(%edx)
	fldl	24(%eax)
	faddp	%st,%st(1)
	fstpl	-40(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	32(%edx)
	fldl	24(%eax)
	fsubp	%st,%st(1)
	fstpl	-48(%ebp)
	fldl	-40(%ebp)
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	fstpl	-80(%ebp)
	fldl	-40(%ebp)
	fldl	-16(%ebp)
	fsubp	%st,%st(1)
	fstpl	-104(%ebp)
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-88(%ebp)
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fsubp	%st,%st(1)
	fstpl	-96(%ebp)
	fldl	-88(%ebp)
	fldl	-80(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	(%eax)
	fldl	-88(%ebp)
	fldl	-80(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	32(%eax)
	fldl	-104(%ebp)
	fldl	-96(%ebp)
	faddp	%st,%st(1)
	movl	L_$JFDCTFLT$_Ld1$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-112(%ebp)
	fldl	-112(%ebp)
	fldl	-104(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	16(%eax)
	fldl	-112(%ebp)
	fldl	-104(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	48(%eax)
	fldl	-56(%ebp)
	fldl	-48(%ebp)
	faddp	%st,%st(1)
	fstpl	-80(%ebp)
	fldl	-64(%ebp)
	fldl	-56(%ebp)
	faddp	%st,%st(1)
	fstpl	-88(%ebp)
	fldl	-72(%ebp)
	fldl	-64(%ebp)
	faddp	%st,%st(1)
	fstpl	-96(%ebp)
	fldl	-96(%ebp)
	fldl	-80(%ebp)
	fsubp	%st,%st(1)
	movl	L_$JFDCTFLT$_Ld2$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-144(%ebp)
	fldl	-80(%ebp)
	movl	L_$JFDCTFLT$_Ld3$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-144(%ebp)
	faddp	%st,%st(1)
	fstpl	-120(%ebp)
	fldl	-96(%ebp)
	movl	L_$JFDCTFLT$_Ld4$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-144(%ebp)
	faddp	%st,%st(1)
	fstpl	-136(%ebp)
	fldl	-88(%ebp)
	movl	L_$JFDCTFLT$_Ld1$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-128(%ebp)
	fldl	-128(%ebp)
	fldl	-72(%ebp)
	faddp	%st,%st(1)
	fstpl	-152(%ebp)
	fldl	-128(%ebp)
	fldl	-72(%ebp)
	fsubp	%st,%st(1)
	fstpl	-160(%ebp)
	fldl	-120(%ebp)
	fldl	-160(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	40(%eax)
	fldl	-120(%ebp)
	fldl	-160(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	24(%eax)
	fldl	-136(%ebp)
	fldl	-152(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	8(%eax)
	fldl	-136(%ebp)
	fldl	-152(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	56(%eax)
	addl	$64,-164(%ebp)
	cmpl	$0,-168(%ebp)
	jg	Lj9
	movl	-4(%ebp),%eax
	movl	%eax,-164(%ebp)
	movl	$7,-168(%ebp)
	incl	-168(%ebp)
	.align 2
Lj74:
	decl	-168(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	448(%edx)
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	448(%edx)
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	-72(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	384(%edx)
	fldl	64(%eax)
	faddp	%st,%st(1)
	fstpl	-24(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	384(%edx)
	fldl	64(%eax)
	fsubp	%st,%st(1)
	fstpl	-64(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	320(%edx)
	fldl	128(%eax)
	faddp	%st,%st(1)
	fstpl	-32(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	320(%edx)
	fldl	128(%eax)
	fsubp	%st,%st(1)
	fstpl	-56(%ebp)
	movl	-164(%ebp),%edx
	movl	-164(%ebp),%eax
	fldl	256(%eax)
	fldl	192(%edx)
	faddp	%st,%st(1)
	fstpl	-40(%ebp)
	movl	-164(%ebp),%eax
	movl	-164(%ebp),%edx
	fldl	256(%edx)
	fldl	192(%eax)
	fsubp	%st,%st(1)
	fstpl	-48(%ebp)
	fldl	-40(%ebp)
	fldl	-16(%ebp)
	faddp	%st,%st(1)
	fstpl	-80(%ebp)
	fldl	-40(%ebp)
	fldl	-16(%ebp)
	fsubp	%st,%st(1)
	fstpl	-104(%ebp)
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	faddp	%st,%st(1)
	fstpl	-88(%ebp)
	fldl	-32(%ebp)
	fldl	-24(%ebp)
	fsubp	%st,%st(1)
	fstpl	-96(%ebp)
	fldl	-88(%ebp)
	fldl	-80(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	(%eax)
	fldl	-88(%ebp)
	fldl	-80(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	256(%eax)
	fldl	-104(%ebp)
	fldl	-96(%ebp)
	faddp	%st,%st(1)
	movl	L_$JFDCTFLT$_Ld1$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-112(%ebp)
	fldl	-112(%ebp)
	fldl	-104(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	128(%eax)
	fldl	-112(%ebp)
	fldl	-104(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	384(%eax)
	fldl	-56(%ebp)
	fldl	-48(%ebp)
	faddp	%st,%st(1)
	fstpl	-80(%ebp)
	fldl	-64(%ebp)
	fldl	-56(%ebp)
	faddp	%st,%st(1)
	fstpl	-88(%ebp)
	fldl	-72(%ebp)
	fldl	-64(%ebp)
	faddp	%st,%st(1)
	fstpl	-96(%ebp)
	fldl	-96(%ebp)
	fldl	-80(%ebp)
	fsubp	%st,%st(1)
	movl	L_$JFDCTFLT$_Ld2$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-144(%ebp)
	fldl	-80(%ebp)
	movl	L_$JFDCTFLT$_Ld3$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-144(%ebp)
	faddp	%st,%st(1)
	fstpl	-120(%ebp)
	fldl	-96(%ebp)
	movl	L_$JFDCTFLT$_Ld4$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldl	-144(%ebp)
	faddp	%st,%st(1)
	fstpl	-136(%ebp)
	fldl	-88(%ebp)
	movl	L_$JFDCTFLT$_Ld1$non_lazy_ptr-Lj4(%ecx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-128(%ebp)
	fldl	-128(%ebp)
	fldl	-72(%ebp)
	faddp	%st,%st(1)
	fstpl	-152(%ebp)
	fldl	-128(%ebp)
	fldl	-72(%ebp)
	fsubp	%st,%st(1)
	fstpl	-160(%ebp)
	fldl	-120(%ebp)
	fldl	-160(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	320(%eax)
	fldl	-120(%ebp)
	fldl	-160(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	192(%eax)
	fldl	-136(%ebp)
	fldl	-152(%ebp)
	faddp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	64(%eax)
	fldl	-136(%ebp)
	fldl	-152(%ebp)
	fsubp	%st,%st(1)
	movl	-164(%ebp),%eax
	fstpl	448(%eax)
	addl	$8,-164(%ebp)
	cmpl	$0,-168(%ebp)
	jg	Lj74
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JFDCTFLT
_THREADVARLIST_JFDCTFLT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$JFDCTFLT$_Ld1
_$JFDCTFLT$_Ld1:
	.byte	188,238,193,44,51,243,4,181,254,63

.const
	.align 3
.globl	_$JFDCTFLT$_Ld2
_$JFDCTFLT$_Ld2:
	.byte	131,197,121,233,58,21,239,195,253,63

.const
	.align 3
.globl	_$JFDCTFLT$_Ld3
_$JFDCTFLT$_Ld3:
	.byte	11,219,5,57,222,211,139,138,254,63

.const
	.align 3
.globl	_$JFDCTFLT$_Ld4
_$JFDCTFLT$_Ld4:
	.byte	66,83,126,107,138,116,61,167,255,63
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
L_$JFDCTFLT$_Ld1$non_lazy_ptr:
.indirect_symbol _$JFDCTFLT$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JFDCTFLT$_Ld2$non_lazy_ptr:
.indirect_symbol _$JFDCTFLT$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JFDCTFLT$_Ld3$non_lazy_ptr:
.indirect_symbol _$JFDCTFLT$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JFDCTFLT$_Ld4$non_lazy_ptr:
.indirect_symbol _$JFDCTFLT$_Ld4
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

