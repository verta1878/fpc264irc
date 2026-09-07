	.file "test_serial.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj5
	jmp	Lj6
Lj5:
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld1,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_ansistr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	incl	U_P$TEST_SERIAL_PASS
	jmp	Lj23
Lj6:
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld2,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_ansistr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	incl	U_P$TEST_SERIAL_FAIL
Lj23:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	P$TEST_SERIAL_TESTCOMPILEONLY
P$TEST_SERIAL_TESTCOMPILEONLY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld3,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld4,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld5,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld6,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld7,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld8,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld9,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld10,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld11,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld12,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld13,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld14,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld15,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld16,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld17,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld18,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld19,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld20,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld21,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld22,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld23,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	P$TEST_SERIAL_TESTHARDWARE
P$TEST_SERIAL_TESTHARDWARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld24,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld25,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld26,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movl	$_$TEST_SERIAL$_Ld27,%eax
	call	SERIAL_SEROPEN$ANSISTRING$$LONGINT
	movl	%eax,U_P$TEST_SERIAL_H
	movl	U_P$TEST_SERIAL_H,%eax
	cmpl	$-1,%eax
	setneb	%dl
	movl	$_$TEST_SERIAL$_Ld28,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	cmpl	$-1,%eax
	je	Lj164
	jmp	Lj165
Lj164:
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld29,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld25,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movb	$41,%cl
	movl	$0,%eax
	call	fpc_write_text_char
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld30,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	jmp	Lj132
Lj165:
	movl	$U_P$TEST_SERIAL_STATE,%edx
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERSAVESTATE$LONGINT$TSERIALSTATE
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld31,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	pushl	$0
	pushl	$1
	pushl	$0
	movl	U_P$TEST_SERIAL_H,%eax
	movl	$8,%ecx
	movl	$9600,%edx
	call	SERIAL_SERSETPARAMS$LONGINT$LONGINT$LONGINT$TPARITYTYPE$LONGINT$TSERIALFLAGS
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld32,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	movb	$1,%dl
	call	SERIAL_SERSETDTR$LONGINT$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld33,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	movb	$1,%dl
	call	SERIAL_SERSETRTS$LONGINT$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld34,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERGETCTS$LONGINT$$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld35,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERGETDSR$LONGINT$$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld36,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERGETRI$LONGINT$$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld37,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERGETCD$LONGINT$$BOOLEAN
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld38,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERFLUSHINPUT$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld39,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERFLUSHOUTPUT$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld40,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERFLUSH$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld41,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movb	$85,U_P$TEST_SERIAL_BUF
	movb	$170,U_P$TEST_SERIAL_BUF+1
	movb	$90,U_P$TEST_SERIAL_BUF+2
	movl	$U_P$TEST_SERIAL_BUF,%edx
	movl	U_P$TEST_SERIAL_H,%eax
	movl	$3,%ecx
	call	SERIAL_SERWRITE$LONGINT$formal$LONGINT$$LONGINT
	movl	%eax,U_P$TEST_SERIAL_N
	movl	U_P$TEST_SERIAL_N,%eax
	cmpl	$3,%eax
	seteb	%dl
	movl	$_$TEST_SERIAL$_Ld42,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	$U_P$TEST_SERIAL_BUF,%eax
	movb	$0,%cl
	movl	$256,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	pushl	$500
	movl	$U_P$TEST_SERIAL_BUF,%edx
	movl	U_P$TEST_SERIAL_H,%eax
	movl	$3,%ecx
	call	SERIAL_SERREADTIMEOUT$LONGINT$formal$LONGINT$LONGINT$$LONGINT
	movl	%eax,U_P$TEST_SERIAL_N
	movl	U_P$TEST_SERIAL_N,%eax
	cmpl	$3,%eax
	je	Lj314
	jmp	Lj315
Lj314:
	movzbl	U_P$TEST_SERIAL_BUF,%eax
	cmpl	$85,%eax
	je	Lj319
	jmp	Lj317
Lj319:
	movb	U_P$TEST_SERIAL_BUF+1,%al
	cmpb	$170,%al
	je	Lj318
	jmp	Lj317
Lj318:
	movzbl	U_P$TEST_SERIAL_BUF+2,%eax
	cmpl	$90,%eax
	je	Lj316
	jmp	Lj317
Lj316:
	movb	$1,%dl
	jmp	Lj320
Lj317:
	movb	$0,%dl
Lj320:
	movl	$_$TEST_SERIAL$_Ld43,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	jmp	Lj323
Lj315:
	movl	U_P$TEST_SERIAL_N,%eax
	cmpl	$0,%eax
	setgeb	%dl
	movl	$_$TEST_SERIAL$_Ld44,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
Lj323:
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERDRAIN$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld45,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERSYNC$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld46,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERBREAK$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld47,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	$U_P$TEST_SERIAL_STATE,%edx
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERRESTORESTATE$LONGINT$TSERIALSTATE
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld48,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
	movl	U_P$TEST_SERIAL_H,%eax
	call	SERIAL_SERCLOSE$LONGINT
	movb	$1,%dl
	movl	$_$TEST_SERIAL$_Ld49,%eax
	call	P$TEST_SERIAL_CHECK$ANSISTRING$BOOLEAN
Lj132:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	_main
_main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	movl	%ebx,-48(%ebp)
	call	FPC_INITIALIZEUNITS
	movl	$0,-44(%ebp)
	leal	-12(%ebp),%ecx
	leal	-36(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj360
	movl	$0,U_P$TEST_SERIAL_PASS
	movl	$0,U_P$TEST_SERIAL_FAIL
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld50,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld51,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld52,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	call	P$TEST_SERIAL_TESTCOMPILEONLY
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	leal	-44(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-44(%ebp)
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-44(%ebp),%eax
	movl	$_$TEST_SERIAL$_Ld53,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj401
	jmp	Lj402
Lj401:
	call	P$TEST_SERIAL_TESTHARDWARE
	jmp	Lj411
Lj402:
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld54,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
Lj411:
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	call	fpc_get_output
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld55,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	U_P$TEST_SERIAL_PASS,%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_sint
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld56,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	U_P$TEST_SERIAL_FAIL,%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_sint
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$TEST_SERIAL$_Ld57,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movl	U_P$TEST_SERIAL_FAIL,%eax
	cmpl	$0,%eax
	jg	Lj460
	jmp	Lj461
Lj460:
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
Lj461:
Lj360:
	call	FPC_POPADDRSTACK
	leal	-44(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-44(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj361
	call	FPC_RERAISE
Lj361:
	call	FPC_DO_EXIT
	movl	-48(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.bss
	.balign 4
U_P$TEST_SERIAL_H:
	.zero 4

.bss
	.balign 4
U_P$TEST_SERIAL_STATE:
	.zero 20

.bss
U_P$TEST_SERIAL_BUF:
	.zero 256

.bss
	.balign 4
U_P$TEST_SERIAL_N:
	.zero 4

.bss
	.balign 4
U_P$TEST_SERIAL_PASS:
	.zero 4

.bss
	.balign 4
U_P$TEST_SERIAL_FAIL:
	.zero 4

.data
	.balign 4
.globl	THREADVARLIST_P$TEST_SERIAL
THREADVARLIST_P$TEST_SERIAL:
	.long	0

.data
	.balign 4
.globl	INITFINAL
INITFINAL:
	.long	6,0
	.long	INIT$_SYSTEM
	.long	0
	.long	INIT$_OBJPAS
	.long	0
	.long	INIT$_SYSCONST
	.long	0
	.long	INIT$_STRINGS
	.long	0
	.long	INIT$_DOSCALLS
	.long	0
	.long	INIT$_SYSUTILS
	.long	0

.data
	.balign 4
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	8
	.long	THREADVARLIST_SYSTEM
	.long	THREADVARLIST_OBJPAS
	.long	THREADVARLIST_SYSCONST
	.long	THREADVARLIST_STRINGS
	.long	THREADVARLIST_DOSCALLS
	.long	THREADVARLIST_SYSUTILS
	.long	THREADVARLIST_SERIAL
	.long	THREADVARLIST_P$TEST_SERIAL

.data
	.balign 4
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.long	1
	.long	RESSTR_SYSCONST_START
	.long	RESSTR_SYSCONST_END

.data
	.balign 4
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.long	0

.text
	.balign 4
	.ascii	"FPC 2.6.4irc-r3 (2026-07-12) [2026/07/29] for i386 "
	.ascii	"- EMX"

.data
	.balign 4
.globl	__stklen
__stklen:
	.long	262144

.data
	.balign 4
.globl	__heapsize
__heapsize:
	.long	0

.data
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld1
_$TEST_SERIAL$_Ld1:
	.ascii	"\010  PASS: \000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld2
_$TEST_SERIAL$_Ld2:
	.ascii	"\010  FAIL: \000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld3
_$TEST_SERIAL$_Ld3:
	.ascii	"3--- Compile-time API check (no hardware needed) --"
	.ascii	"-\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$TEST_SERIAL$_Ld4
_$TEST_SERIAL$_Ld4:
	.ascii	"SerOpen declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld5
_$TEST_SERIAL$_Ld5:
	.ascii	"SerClose declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$TEST_SERIAL$_Ld6
_$TEST_SERIAL$_Ld6:
	.ascii	"SerRead declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld7
_$TEST_SERIAL$_Ld7:
	.ascii	"SerWrite declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld8
_$TEST_SERIAL$_Ld8:
	.ascii	"SerFlush declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$TEST_SERIAL$_Ld9
_$TEST_SERIAL$_Ld9:
	.ascii	"SerSetParams declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$TEST_SERIAL$_Ld10
_$TEST_SERIAL$_Ld10:
	.ascii	"SerSaveState declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$TEST_SERIAL$_Ld11
_$TEST_SERIAL$_Ld11:
	.ascii	"SerRestoreState declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$TEST_SERIAL$_Ld12
_$TEST_SERIAL$_Ld12:
	.ascii	"SerSetDTR declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$TEST_SERIAL$_Ld13
_$TEST_SERIAL$_Ld13:
	.ascii	"SerSetRTS declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$TEST_SERIAL$_Ld14
_$TEST_SERIAL$_Ld14:
	.ascii	"SerGetCTS declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$TEST_SERIAL$_Ld15
_$TEST_SERIAL$_Ld15:
	.ascii	"SerGetDSR declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld16
_$TEST_SERIAL$_Ld16:
	.ascii	"SerGetRI declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld17
_$TEST_SERIAL$_Ld17:
	.ascii	"SerGetCD declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld18
_$TEST_SERIAL$_Ld18:
	.ascii	"SerBreak declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$TEST_SERIAL$_Ld19
_$TEST_SERIAL$_Ld19:
	.ascii	"SerDrain declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$TEST_SERIAL$_Ld20
_$TEST_SERIAL$_Ld20:
	.ascii	"SerSync declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$TEST_SERIAL$_Ld21
_$TEST_SERIAL$_Ld21:
	.ascii	"SerFlushInput declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$TEST_SERIAL$_Ld22
_$TEST_SERIAL$_Ld22:
	.ascii	"SerFlushOutput declared\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$TEST_SERIAL$_Ld23
_$TEST_SERIAL$_Ld23:
	.ascii	"SerReadTimeout declared\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld24
_$TEST_SERIAL$_Ld24:
	.ascii	"\025--- Hardware test on \000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld25
_$TEST_SERIAL$_Ld25:
	.ascii	"\004COM1\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld26
_$TEST_SERIAL$_Ld26:
	.ascii	"\004 ---\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$TEST_SERIAL$_Ld27
_$TEST_SERIAL$_Ld27:
	.ascii	"COM1\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$TEST_SERIAL$_Ld28
_$TEST_SERIAL$_Ld28:
	.ascii	"SerOpen\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld29
_$TEST_SERIAL$_Ld29:
	.ascii	"\034  SKIP: port not available (\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld30
_$TEST_SERIAL$_Ld30:
	.ascii	".  This is normal if no serial port is present.\000"

.data
	.balign 4
	.short	0,1
	.long	-1,12
.globl	_$TEST_SERIAL$_Ld31
_$TEST_SERIAL$_Ld31:
	.ascii	"SerSaveState\000"

.data
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$TEST_SERIAL$_Ld32
_$TEST_SERIAL$_Ld32:
	.ascii	"SerSetParams 9600/8N1\000"

.data
	.balign 4
	.short	0,1
	.long	-1,12
.globl	_$TEST_SERIAL$_Ld33
_$TEST_SERIAL$_Ld33:
	.ascii	"SerSetDTR on\000"

.data
	.balign 4
	.short	0,1
	.long	-1,12
.globl	_$TEST_SERIAL$_Ld34
_$TEST_SERIAL$_Ld34:
	.ascii	"SerSetRTS on\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$TEST_SERIAL$_Ld35
_$TEST_SERIAL$_Ld35:
	.ascii	"SerGetCTS\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$TEST_SERIAL$_Ld36
_$TEST_SERIAL$_Ld36:
	.ascii	"SerGetDSR\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$TEST_SERIAL$_Ld37
_$TEST_SERIAL$_Ld37:
	.ascii	"SerGetRI\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$TEST_SERIAL$_Ld38
_$TEST_SERIAL$_Ld38:
	.ascii	"SerGetCD\000"

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$TEST_SERIAL$_Ld39
_$TEST_SERIAL$_Ld39:
	.ascii	"SerFlushInput\000"

.data
	.balign 4
	.short	0,1
	.long	-1,14
.globl	_$TEST_SERIAL$_Ld40
_$TEST_SERIAL$_Ld40:
	.ascii	"SerFlushOutput\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$TEST_SERIAL$_Ld41
_$TEST_SERIAL$_Ld41:
	.ascii	"SerFlush\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$TEST_SERIAL$_Ld42
_$TEST_SERIAL$_Ld42:
	.ascii	"SerWrite 3 bytes\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$TEST_SERIAL$_Ld43
_$TEST_SERIAL$_Ld43:
	.ascii	"SerReadTimeout loopback\000"

.data
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$TEST_SERIAL$_Ld44
_$TEST_SERIAL$_Ld44:
	.ascii	"SerReadTimeout (no loopback?)\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$TEST_SERIAL$_Ld45
_$TEST_SERIAL$_Ld45:
	.ascii	"SerDrain\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$TEST_SERIAL$_Ld46
_$TEST_SERIAL$_Ld46:
	.ascii	"SerSync\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$TEST_SERIAL$_Ld47
_$TEST_SERIAL$_Ld47:
	.ascii	"SerBreak\000"

.data
	.balign 4
	.short	0,1
	.long	-1,15
.globl	_$TEST_SERIAL$_Ld48
_$TEST_SERIAL$_Ld48:
	.ascii	"SerRestoreState\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$TEST_SERIAL$_Ld49
_$TEST_SERIAL$_Ld49:
	.ascii	"SerClose\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld50
_$TEST_SERIAL$_Ld50:
	.ascii	"%=== FPC 2.6.4irc Serial Unit Test ===\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld51
_$TEST_SERIAL$_Ld51:
	.ascii	"\012Platform: \000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld52
_$TEST_SERIAL$_Ld52:
	.ascii	"\004OS/2\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$TEST_SERIAL$_Ld53
_$TEST_SERIAL$_Ld53:
	.ascii	"-hw\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld54
_$TEST_SERIAL$_Ld54:
	.ascii	"1--- Hardware test skipped (use -hw to enable) ---\000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld55
_$TEST_SERIAL$_Ld55:
	.ascii	"\011Results: \000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld56
_$TEST_SERIAL$_Ld56:
	.ascii	"\007 pass, \000"

.data
	.balign 4
.globl	_$TEST_SERIAL$_Ld57
_$TEST_SERIAL$_Ld57:
	.ascii	"\005 fail\000"
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

