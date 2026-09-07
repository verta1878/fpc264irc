	.file "serial.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	SERIAL_SEROPEN$ANSISTRING$$LONGINT
SERIAL_SEROPEN$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	pushl	$66
	pushl	$1
	pushl	$0
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj23
	movl	$FPC_EMPTYCHAR,%eax
Lj23:
	pushl	%eax
	call	DOSCALLS_DOSOPEN$crcB952359D
	addl	$32,%esp
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj24
	jmp	Lj25
Lj24:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj28
Lj25:
	movl	$-1,-8(%ebp)
Lj28:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERCLOSE$LONGINT
SERIAL_SERCLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj33
	jmp	Lj34
Lj33:
	pushl	-4(%ebp)
	call	DOSCALLS_DOSCLOSE$LONGINT$$LONGWORD
	popl	%ebx
Lj34:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERFLUSH$LONGINT
SERIAL_SERFLUSH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	$1,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-5(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-5(%ebp),%eax
	pushl	%eax
	pushl	$71
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERREAD$LONGINT$formal$LONGINT$$LONGINT
SERIAL_SERREAD$LONGINT$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSREAD$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj65
	jmp	Lj66
Lj65:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj77
Lj66:
	movl	$-1,-16(%ebp)
Lj77:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERWRITE$LONGINT$formal$LONGINT$$LONGINT
SERIAL_SERWRITE$LONGINT$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSWRITE$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj82
	jmp	Lj83
Lj82:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj94
Lj83:
	movl	$-1,-16(%ebp)
Lj94:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERSETPARAMS$LONGINT$LONGINT$LONGINT$TPARITYTYPE$LONGINT$TSERIALFLAGS
SERIAL_SERSETPARAMS$LONGINT$LONGINT$LONGINT$TPARITYTYPE$LONGINT$TSERIALFLAGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movb	$0,-16(%ebp)
	movl	$8,-28(%ebp)
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%eax
	pushl	%eax
	pushl	-32(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	-28(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$65
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	movb	-12(%ebp),%al
	movb	%al,-23(%ebp)
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj129
	decl	%eax
	je	Lj130
	decl	%eax
	je	Lj131
	jmp	Lj128
Lj129:
	movb	$0,-22(%ebp)
	jmp	Lj127
Lj130:
	movb	$1,-22(%ebp)
	jmp	Lj127
Lj131:
	movb	$2,-22(%ebp)
	jmp	Lj127
Lj128:
Lj127:
	movl	12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj138
	jmp	Lj139
Lj138:
	movb	$2,-21(%ebp)
	jmp	Lj142
Lj139:
	movb	$0,-21(%ebp)
Lj142:
	movl	$3,-28(%ebp)
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%eax
	pushl	%eax
	pushl	-32(%ebp)
	leal	-23(%ebp),%eax
	pushl	%eax
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	-28(%ebp)
	leal	-23(%ebp),%eax
	pushl	%eax
	pushl	$66
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SERIAL_SERSAVESTATE$LONGINT$$TSERIALSTATE
SERIAL_SERSAVESTATE$LONGINT$$TSERIALSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-24(%ebp)
	movl	$8,-28(%ebp)
	leal	-16(%ebp),%eax
	movb	$0,%cl
	movl	$8,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	-28(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	-24(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$97
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	$0,-24(%ebp)
	movl	$3,-28(%ebp)
	leal	-19(%ebp),%eax
	movb	$0,%cl
	movl	$3,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	-28(%ebp)
	leal	-19(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	-24(%ebp)
	leal	-19(%ebp),%eax
	pushl	%eax
	pushl	$98
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	movl	-8(%ebp),%eax
	movzbl	-19(%ebp),%edx
	movl	%edx,4(%eax)
	movb	-18(%ebp),%al
	cmpb	$1,%al
	jb	Lj230
	decb	%al
	je	Lj231
	decb	%al
	je	Lj232
	jmp	Lj230
Lj231:
	movl	-8(%ebp),%eax
	movl	$1,8(%eax)
	jmp	Lj229
Lj232:
	movl	-8(%ebp),%eax
	movl	$2,8(%eax)
	jmp	Lj229
Lj230:
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
Lj229:
	movzbl	-17(%ebp),%eax
	cmpl	$2,%eax
	je	Lj239
	jmp	Lj240
Lj239:
	movl	-8(%ebp),%eax
	movl	$2,12(%eax)
	jmp	Lj243
Lj240:
	movl	-8(%ebp),%eax
	movl	$1,12(%eax)
Lj243:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERRESTORESTATE$LONGINT$TSERIALSTATE
SERIAL_SERRESTORESTATE$LONGINT$TSERIALSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$5,%ecx
	rep
	movsl
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SERIAL_SERSETPARAMS$LONGINT$LONGINT$LONGINT$TPARITYTYPE$LONGINT$TSERIALFLAGS
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SERIAL_SETMODEM$LONGINT$BYTE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-8(%ebp),%al
	movb	%al,-14(%ebp)
	movb	-12(%ebp),%al
	movb	%al,-13(%ebp)
	movl	$2,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	-24(%ebp)
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	leal	-14(%ebp),%eax
	pushl	%eax
	pushl	$70
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret

.text
	.balign 4,0x90
SERIAL_GETMODEMIN$LONGINT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-6(%ebp)
	movl	$0,-12(%ebp)
	movl	$1,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	pushl	$103
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	movb	-6(%ebp),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERSETDTR$LONGINT$BOOLEAN
SERIAL_SERSETDTR$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj320
	jmp	Lj321
Lj320:
	movl	-4(%ebp),%eax
	movb	$255,%cl
	movb	$1,%dl
	call	SERIAL_SETMODEM$LONGINT$BYTE$BYTE
	jmp	Lj328
Lj321:
	movl	-4(%ebp),%eax
	movb	$254,%cl
	movb	$0,%dl
	call	SERIAL_SETMODEM$LONGINT$BYTE$BYTE
Lj328:
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERSETRTS$LONGINT$BOOLEAN
SERIAL_SERSETRTS$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj337
	jmp	Lj338
Lj337:
	movl	-4(%ebp),%eax
	movb	$255,%cl
	movb	$2,%dl
	call	SERIAL_SETMODEM$LONGINT$BYTE$BYTE
	jmp	Lj345
Lj338:
	movl	-4(%ebp),%eax
	movb	$253,%cl
	movb	$0,%dl
	call	SERIAL_SETMODEM$LONGINT$BYTE$BYTE
Lj345:
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERGETCTS$LONGINT$$BOOLEAN
SERIAL_SERGETCTS$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_GETMODEMIN$LONGINT$$BYTE
	andb	$16,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERGETDSR$LONGINT$$BOOLEAN
SERIAL_SERGETDSR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_GETMODEMIN$LONGINT$$BYTE
	andb	$32,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERGETRI$LONGINT$$BOOLEAN
SERIAL_SERGETRI$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_GETMODEMIN$LONGINT$$BYTE
	andb	$64,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERGETCD$LONGINT$$BOOLEAN
SERIAL_SERGETCD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_GETMODEMIN$LONGINT$$BYTE
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERBREAK$LONGINT
SERIAL_SERBREAK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	movl	$2,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	pushl	$77
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	pushl	$250
	call	DOSCALLS_DOSSLEEP$LONGWORD
	popl	%ebx
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	pushl	$78
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERDRAIN$LONGINT
SERIAL_SERDRAIN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_SERFLUSH$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERSYNC$LONGINT
SERIAL_SERSYNC$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_SERFLUSH$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERFLUSHINPUT$LONGINT
SERIAL_SERFLUSHINPUT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	$1,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-5(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-5(%ebp),%eax
	pushl	%eax
	pushl	$72
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERFLUSHOUTPUT$LONGINT
SERIAL_SERFLUSHOUTPUT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SERIAL_SERFLUSH$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERREADTIMEOUT$LONGINT$formal$LONGINT$LONGINT$$LONGINT
SERIAL_SERREADTIMEOUT$LONGINT$formal$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSREAD$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj462
	jmp	Lj463
Lj462:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj474
Lj463:
	movl	$-1,-16(%ebp)
Lj474:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SERIAL_SERDATAAVAILABLE$LONGINT$$BOOLEAN
SERIAL_SERDATAAVAILABLE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$8,-24(%ebp)
	leal	-14(%ebp),%eax
	movb	$0,%cl
	movl	$8,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	-24(%ebp)
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	leal	-14(%ebp),%eax
	pushl	%eax
	pushl	$104
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	movzwl	-14(%ebp),%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERDETECTUART$LONGINT$$ANSISTRING
SERIAL_SERDETECTUART$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj511
	jmp	Lj512
Lj511:
	movl	$_$SERIAL$_Ld1,%esi
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
	jmp	Lj515
Lj512:
	movl	$_$SERIAL$_Ld2,%esi
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
Lj515:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERSETFIFO$LONGINT$BOOLEAN$BYTE
SERIAL_SERSETFIFO$LONGINT$BOOLEAN$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj520
	jmp	Lj521
Lj520:
	movb	$1,-16(%ebp)
	movzbw	-12(%ebp),%ax
	movw	%ax,-14(%ebp)
	jmp	Lj526
Lj521:
	movb	$0,-16(%ebp)
	movw	$1,-14(%ebp)
Lj526:
	movl	$4,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	-24(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$83
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERGETBASE$LONGINT$$WORD
SERIAL_SERGETBASE$LONGINT$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65535,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERENABLEIRQ$LONGINT
SERIAL_SERENABLEIRQ$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movw	$1,-6(%ebp)
	movl	$2,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	pushl	$69
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	SERIAL_SERDISABLEIRQ$LONGINT
SERIAL_SERDISABLEIRQ$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	movl	$2,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	leal	-6(%ebp),%eax
	pushl	%eax
	pushl	$71
	pushl	$1
	pushl	-4(%ebp)
	call	DOSCALLS_DOSDEVIOCTL$crc03DCF442
	addl	$36,%esp
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_SERIAL
THREADVARLIST_SERIAL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SERIAL$_Ld1
_$SERIAL$_Ld1:
	.ascii	"SIO\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SERIAL$_Ld2
_$SERIAL$_Ld2:
	.ascii	"none\000"
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
.globl	INIT_SERIAL_TPARITYTYPE
INIT_SERIAL_TPARITYTYPE:
	.byte	3,11
	.ascii	"TParityType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"NoneParity"
	.byte	9
	.ascii	"OddParity"
	.byte	10
	.ascii	"EvenParity"
	.byte	6
	.ascii	"Serial"
	.byte	0

.data
	.balign 4
.globl	RTTI_SERIAL_TPARITYTYPE
RTTI_SERIAL_TPARITYTYPE:
	.byte	3,11
	.ascii	"TParityType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"NoneParity"
	.byte	9
	.ascii	"OddParity"
	.byte	10
	.ascii	"EvenParity"
	.byte	6
	.ascii	"Serial"
	.byte	0

.data
	.balign 4
.globl	RTTI_SERIAL_TPARITYTYPE_s2o
RTTI_SERIAL_TPARITYTYPE_s2o:
	.long	3,2
	.long	RTTI_SERIAL_TPARITYTYPE+47
	.long	0
	.long	RTTI_SERIAL_TPARITYTYPE+26
	.long	1
	.long	RTTI_SERIAL_TPARITYTYPE+37

.data
	.balign 4
.globl	RTTI_SERIAL_TPARITYTYPE_o2s
RTTI_SERIAL_TPARITYTYPE_o2s:
	.long	0
	.long	RTTI_SERIAL_TPARITYTYPE+26
	.long	RTTI_SERIAL_TPARITYTYPE+37
	.long	RTTI_SERIAL_TPARITYTYPE+47

.data
	.balign 4
.globl	INIT_SERIAL_DEF1
INIT_SERIAL_DEF1:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,0,0
	.byte	12
	.ascii	"sfRtsControl"
	.byte	6
	.ascii	"Serial"
	.byte	0

.data
	.balign 4
.globl	INIT_SERIAL_TSERIALFLAGS
INIT_SERIAL_TSERIALFLAGS:
	.byte	5,12
	.ascii	"TSerialFlags"
	.byte	5
	.long	INIT_SERIAL_DEF1

.data
	.balign 4
.globl	RTTI_SERIAL_DEF1
RTTI_SERIAL_DEF1:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,0,0
	.byte	12
	.ascii	"sfRtsControl"
	.byte	6
	.ascii	"Serial"
	.byte	0

.data
	.balign 4
.globl	RTTI_SERIAL_DEF1_s2o
RTTI_SERIAL_DEF1_s2o:
	.long	1,0
	.long	RTTI_SERIAL_DEF1+15

.data
	.balign 4
.globl	RTTI_SERIAL_DEF1_o2s
RTTI_SERIAL_DEF1_o2s:
	.long	0
	.long	RTTI_SERIAL_DEF1+15

.data
	.balign 4
.globl	RTTI_SERIAL_TSERIALFLAGS
RTTI_SERIAL_TSERIALFLAGS:
	.byte	5,12
	.ascii	"TSerialFlags"
	.byte	5
	.long	RTTI_SERIAL_DEF1

.data
	.balign 4
.globl	INIT_SERIAL_TSERIALSTATE
INIT_SERIAL_TSERIALSTATE:
	.byte	13,12
	.ascii	"TSerialState"
	.long	20,0

.data
	.balign 4
.globl	RTTI_SERIAL_TSERIALSTATE
RTTI_SERIAL_TSERIALSTATE:
	.byte	13,12
	.ascii	"TSerialState"
	.long	20,5
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SERIAL_TPARITYTYPE
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_SERIAL_TSERIALFLAGS
	.long	16
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

