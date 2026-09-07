	.file "inffast.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	INFFAST_INFLATE_FAST$crc5A0381D8
INFFAST_INFLATE_FAST$crc5A0381D8:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	12(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	12(%ebp),%eax
	movl	-44(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj15
	jmp	Lj16
Lj15:
	movl	12(%ebp),%eax
	movl	48(%eax),%edx
	movl	-44(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-48(%ebp)
	jmp	Lj19
Lj16:
	movl	12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-44(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-48(%ebp)
Lj19:
	movl	-4(%ebp),%eax
	movl	TC_INFUTIL_INFLATE_MASK(,%eax,4),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	TC_INFUTIL_INFLATE_MASK(,%eax,4),%eax
	movl	%eax,-56(%ebp)
	.balign 4,0x90
Lj26:
	jmp	Lj30
	.balign 4,0x90
Lj29:
	decl	-40(%ebp)
	movl	-36(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-32(%ebp),%ecx
	shll	%cl,%eax
	movl	-28(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-28(%ebp)
	incl	-36(%ebp)
	addl	$8,-32(%ebp)
Lj30:
	movl	-32(%ebp),%eax
	cmpl	$20,%eax
	jb	Lj29
	jmp	Lj31
Lj31:
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	-52(%ebp),%edx
	andl	%edx,%eax
	leal	(%ecx,%eax,8),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj38
	jmp	Lj39
Lj38:
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%ecx
	movl	-28(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	%eax,-32(%ebp)
	movl	-44(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	4(%eax),%al
	movb	%al,(%edx)
	incl	-44(%ebp)
	decl	-48(%ebp)
	jmp	Lj27
Lj39:
	.balign 4,0x90
Lj44:
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%ecx
	movl	-28(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj49
	jmp	Lj50
Lj49:
	movl	-24(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	TC_INFUTIL_INFLATE_MASK(,%eax,4),%edx
	movl	-28(%ebp),%eax
	andl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	subl	%eax,-32(%ebp)
	jmp	Lj58
	.balign 4,0x90
Lj57:
	decl	-40(%ebp)
	movl	-36(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-32(%ebp),%ecx
	shll	%cl,%eax
	movl	-28(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-28(%ebp)
	incl	-36(%ebp)
	addl	$8,-32(%ebp)
Lj58:
	movl	-32(%ebp),%eax
	cmpl	$15,%eax
	jb	Lj57
	jmp	Lj59
Lj59:
	movl	16(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	-56(%ebp),%edx
	andl	%edx,%eax
	leal	(%ecx,%eax,8),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj66:
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%ecx
	movl	-28(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-24(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj76
	.balign 4,0x90
Lj75:
	decl	-40(%ebp)
	movl	-36(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-32(%ebp),%ecx
	shll	%cl,%eax
	movl	-28(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-28(%ebp)
	incl	-36(%ebp)
	addl	$8,-32(%ebp)
Lj76:
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj75
	jmp	Lj77
Lj77:
	movl	-24(%ebp),%eax
	movl	TC_INFUTIL_INFLATE_MASK(,%eax,4),%edx
	movl	-28(%ebp),%eax
	andl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-64(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	subl	%eax,-32(%ebp)
	movl	-60(%ebp),%eax
	subl	%eax,-48(%ebp)
	movl	12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	40(%eax),%eax
	subl	%eax,%edx
	cmpl	-64(%ebp),%edx
	jae	Lj84
	jmp	Lj85
Lj84:
	movl	-44(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-64(%ebp),%eax
	subl	%eax,-68(%ebp)
	movl	-44(%ebp),%edx
	movl	-68(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-44(%ebp)
	incl	-68(%ebp)
	decl	-60(%ebp)
	movl	-44(%ebp),%edx
	movl	-68(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-44(%ebp)
	incl	-68(%ebp)
	decl	-60(%ebp)
	jmp	Lj92
Lj85:
	movl	12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	40(%eax),%eax
	subl	%eax,%edx
	movl	-64(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	12(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-24(%ebp),%eax
	subl	%eax,-68(%ebp)
	movl	-60(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj97
	jmp	Lj98
Lj97:
	movl	-24(%ebp),%eax
	subl	%eax,-60(%ebp)
	.balign 4,0x90
Lj99:
	movl	-44(%ebp),%edx
	movl	-68(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-44(%ebp)
	incl	-68(%ebp)
	decl	-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj101
	jmp	Lj99
Lj101:
	movl	12(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-68(%ebp)
Lj98:
Lj92:
	.balign 4,0x90
Lj106:
	movl	-44(%ebp),%edx
	movl	-68(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-44(%ebp)
	incl	-68(%ebp)
	decl	-60(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	jmp	Lj106
Lj108:
	jmp	Lj68
	jmp	Lj111
Lj72:
	movl	-24(%ebp),%eax
	andl	$64,%eax
	testl	%eax,%eax
	je	Lj112
	jmp	Lj113
Lj112:
	movl	-24(%ebp),%eax
	movl	TC_INFUTIL_INFLATE_MASK(,%eax,4),%eax
	movl	-28(%ebp),%edx
	andl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	4(%edx),%edx
	addl	%edx,%eax
	shll	$3,%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj116
Lj113:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	$_$INFFAST$_Ld1,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	cmpl	-60(%ebp),%eax
	jb	Lj125
	jmp	Lj126
Lj125:
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-60(%ebp)
Lj126:
	movl	-60(%ebp),%eax
	addl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-60(%ebp),%eax
	shll	$3,%eax
	subl	%eax,-32(%ebp)
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,32(%edx)
	movl	12(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,28(%edx)
	movl	8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,4(%eax)
	movl	8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,(%eax)
	movl	12(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,52(%edx)
	movl	$-3,-16(%ebp)
	jmp	Lj3
Lj116:
Lj111:
	jmp	Lj66
Lj68:
	jmp	Lj46
Lj50:
	movl	-24(%ebp),%eax
	andl	$64,%eax
	testl	%eax,%eax
	je	Lj141
	jmp	Lj142
Lj141:
	movl	-24(%ebp),%eax
	movl	TC_INFUTIL_INFLATE_MASK(,%eax,4),%eax
	movl	-28(%ebp),%edx
	andl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	4(%edx),%edx
	addl	%edx,%eax
	shll	$3,%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj145
	jmp	Lj146
Lj145:
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%ecx
	movl	-28(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	%eax,-32(%ebp)
	movl	-44(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	4(%eax),%al
	movb	%al,(%edx)
	incl	-44(%ebp)
	decl	-48(%ebp)
	jmp	Lj46
Lj146:
	jmp	Lj151
Lj142:
	movl	-24(%ebp),%eax
	andl	$32,%eax
	testl	%eax,%eax
	jne	Lj152
	jmp	Lj153
Lj152:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	cmpl	-60(%ebp),%eax
	jb	Lj156
	jmp	Lj157
Lj156:
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-60(%ebp)
Lj157:
	movl	-60(%ebp),%eax
	addl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-60(%ebp),%eax
	shll	$3,%eax
	subl	%eax,-32(%ebp)
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,32(%edx)
	movl	12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,28(%eax)
	movl	8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,4(%eax)
	movl	8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,(%eax)
	movl	12(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,52(%edx)
	movl	$1,-16(%ebp)
	jmp	Lj3
	jmp	Lj172
Lj153:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	$_$INFFAST$_Ld2,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-60(%ebp)
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	cmpl	-60(%ebp),%eax
	jb	Lj181
	jmp	Lj182
Lj181:
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-60(%ebp)
Lj182:
	movl	-60(%ebp),%eax
	addl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-60(%ebp),%eax
	shll	$3,%eax
	subl	%eax,-32(%ebp)
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,32(%edx)
	movl	12(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,28(%edx)
	movl	8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,4(%eax)
	movl	8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,52(%eax)
	movl	$-3,-16(%ebp)
	jmp	Lj3
Lj172:
Lj151:
	jmp	Lj44
Lj46:
Lj27:
	movl	-48(%ebp),%eax
	cmpl	$258,%eax
	jb	Lj28
	jmp	Lj197
Lj197:
	movl	-40(%ebp),%eax
	cmpl	$10,%eax
	jb	Lj28
	jmp	Lj26
Lj28:
	movl	8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	cmpl	-60(%ebp),%eax
	jb	Lj200
	jmp	Lj201
Lj200:
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-60(%ebp)
Lj201:
	movl	-60(%ebp),%eax
	addl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-60(%ebp),%eax
	shll	$3,%eax
	subl	%eax,-32(%ebp)
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,32(%edx)
	movl	12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,28(%eax)
	movl	8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,4(%edx)
	movl	8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,52(%edx)
	movl	$0,-16(%ebp)
Lj3:
	movl	-16(%ebp),%eax
	leave
	ret	$12
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_INFFAST
THREADVARLIST_INFFAST:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	_$INFFAST$_Ld1
_$INFFAST$_Ld1:
	.ascii	"\025invalid distance code\000"

.data
	.balign 4
.globl	_$INFFAST$_Ld2
_$INFFAST$_Ld2:
	.ascii	"\033invalid literal/length code\000"
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

