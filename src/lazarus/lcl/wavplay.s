	.file "wavplay.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
WAVPLAY_WRITETEMPWAV$PBYTE$LONGWORD$LONGWORD$WORD$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$164,%esp
	movl	%ebx,-164(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-132(%ebp)
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5
	movl	$_$WAVPLAY$_Ld1,%eax
	movl	%eax,-128(%ebp)
	leal	-132(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-132(%ebp)
	call	SYSTEM_GETPROCESSID$$LONGWORD
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	leal	-132(%ebp),%eax
	call	SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
	movl	-132(%ebp),%eax
	movl	%eax,-124(%ebp)
	movl	$_$WAVPLAY$_Ld2,%eax
	movl	%eax,-120(%ebp)
	leal	-128(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movzwl	16(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movzwl	12(%ebp),%edx
	imull	%edx,%eax
	movw	%ax,-62(%ebp)
	movzwl	-62(%ebp),%eax
	mull	-12(%ebp)
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%eax
	addl	$36,%eax
	movl	%eax,-76(%ebp)
	leal	-60(%ebp),%eax
	movb	$0,%cl
	movl	$44,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	$82,-60(%ebp)
	movb	$73,-59(%ebp)
	movb	$70,-58(%ebp)
	movb	$70,-57(%ebp)
	leal	-56(%ebp),%edx
	movl	-76(%ebp),%eax
	movl	%eax,(%edx)
	movb	$87,-52(%ebp)
	movb	$65,-51(%ebp)
	movb	$86,-50(%ebp)
	movb	$69,-49(%ebp)
	movb	$102,-48(%ebp)
	movb	$109,-47(%ebp)
	movb	$116,-46(%ebp)
	movb	$32,-45(%ebp)
	leal	-44(%ebp),%eax
	movl	$16,(%eax)
	leal	-40(%ebp),%eax
	movw	$1,(%eax)
	leal	-38(%ebp),%edx
	movw	12(%ebp),%ax
	movw	%ax,(%edx)
	leal	-36(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	leal	-32(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	%edx,(%eax)
	leal	-28(%ebp),%edx
	movw	-62(%ebp),%ax
	movw	%ax,(%edx)
	leal	-26(%ebp),%eax
	movw	16(%ebp),%dx
	movw	%dx,(%eax)
	movb	$100,-24(%ebp)
	movb	$97,-23(%ebp)
	movb	$116,-22(%ebp)
	movb	$97,-21(%ebp)
	leal	-20(%ebp),%eax
	movl	-72(%ebp),%edx
	movl	%edx,(%eax)
	pushl	$65280
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	%eax,-16(%ebp)
	leal	-128(%ebp),%ecx
	leal	-156(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj92
	leal	-60(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$44,%ecx
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%edx
	movl	-72(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj92:
	call	FPC_POPADDRSTACK
	movl	-16(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj93
	decl	%eax
	testl	%eax,%eax
	je	Lj94
Lj94:
	call	FPC_RERAISE
Lj93:
Lj5:
	call	FPC_POPADDRSTACK
	leal	-132(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-132(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6
	call	FPC_RERAISE
Lj6:
	movl	-164(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	WAVPLAY_PLAYWAV$ANSISTRING$$BOOLEAN
WAVPLAY_PLAYWAV$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj112
	movl	$_$WAVPLAY$_Ld3,%eax
	movl	%eax,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$_$WAVPLAY$_Ld4,%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	pushl	$0
	pushl	$0
	pushl	$0
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj131
	movl	$FPC_EMPTYCHAR,%eax
Lj131:
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj132
	jmp	Lj133
Lj132:
	movb	$0,-5(%ebp)
	jmp	Lj112
Lj133:
	pushl	$0
	pushl	$0
	pushl	$0
	movl	$_$WAVPLAY$_Ld5,%eax
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	pushl	$0
	pushl	$0
	pushl	$0
	movl	$_$WAVPLAY$_Ld6,%eax
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
Lj112:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj113
	call	FPC_RERAISE
Lj113:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	WAVPLAY_PLAYWAVASYNC$ANSISTRING$$BOOLEAN
WAVPLAY_PLAYWAVASYNC$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj164
	movl	$_$WAVPLAY$_Ld3,%eax
	movl	%eax,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$_$WAVPLAY$_Ld4,%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	pushl	$0
	pushl	$0
	pushl	$0
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj183
	movl	$FPC_EMPTYCHAR,%eax
Lj183:
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj184
	jmp	Lj185
Lj184:
	movb	$0,-5(%ebp)
	jmp	Lj164
Lj185:
	pushl	$0
	pushl	$0
	pushl	$0
	movl	$_$WAVPLAY$_Ld7,%eax
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
Lj164:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj165
	call	FPC_RERAISE
Lj165:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	WAVPLAY_STOPWAV
WAVPLAY_STOPWAV:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	$0
	pushl	$0
	pushl	$0
	movl	$_$WAVPLAY$_Ld8,%eax
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	pushl	$0
	pushl	$0
	pushl	$0
	movl	$_$WAVPLAY$_Ld6,%eax
	pushl	%eax
	call	_$dll$mdm$mciSendString
	addl	$16,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	WAVPLAY_PLAYPCMBUFFER$PBYTE$LONGWORD$LONGWORD$WORD$WORD$$BOOLEAN
WAVPLAY_PLAYPCMBUFFER$PBYTE$LONGWORD$LONGWORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj226
	movzwl	12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	WAVPLAY_WRITETEMPWAV$PBYTE$LONGWORD$LONGWORD$WORD$WORD$$ANSISTRING
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj241
	movl	-20(%ebp),%eax
	call	WAVPLAY_PLAYWAV$ANSISTRING$$BOOLEAN
	movb	%al,-13(%ebp)
Lj241:
	call	FPC_POPADDRSTACK
	movl	-20(%ebp),%eax
	call	SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
	popl	%eax
	testl	%eax,%eax
	je	Lj242
	decl	%eax
	testl	%eax,%eax
	je	Lj243
Lj243:
	call	FPC_RERAISE
Lj242:
Lj226:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj227
	call	FPC_RERAISE
Lj227:
	movb	-13(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	WAVPLAY_AUDIOAVAILABLE$$BOOLEAN
WAVPLAY_AUDIOAVAILABLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movb	$1,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_WAVPLAY
THREADVARLIST_WAVPLAY:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$WAVPLAY$_Ld1
_$WAVPLAY$_Ld1:
	.ascii	"/tmp/fpc_wav_\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$WAVPLAY$_Ld2
_$WAVPLAY$_Ld2:
	.ascii	".wav\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$WAVPLAY$_Ld3
_$WAVPLAY$_Ld3:
	.ascii	"open \"\000"

.data
	.balign 4
	.short	0,1
	.long	-1,34
.globl	_$WAVPLAY$_Ld4
_$WAVPLAY$_Ld4:
	.ascii	"\" type waveaudio alias fpcwav wait\000"

.data
	.balign 4
.globl	_$WAVPLAY$_Ld5
_$WAVPLAY$_Ld5:
	.ascii	"play fpcwav wait\000"

.data
	.balign 4
.globl	_$WAVPLAY$_Ld6
_$WAVPLAY$_Ld6:
	.ascii	"close fpcwav\000"

.data
	.balign 4
.globl	_$WAVPLAY$_Ld7
_$WAVPLAY$_Ld7:
	.ascii	"play fpcwav\000"

.data
	.balign 4
.globl	_$WAVPLAY$_Ld8
_$WAVPLAY$_Ld8:
	.ascii	"stop fpcwav\000"
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
.globl	INIT_WAVPLAY_DEF45
INIT_WAVPLAY_DEF45:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_WAVPLAY_DEF50
INIT_WAVPLAY_DEF50:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_WAVPLAY_DEF36
INIT_WAVPLAY_DEF36:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256
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

