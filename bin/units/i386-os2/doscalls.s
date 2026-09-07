	.file "doscalls.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATETHREAD$LONGINT$TTHREADENTRY$POINTER$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSCREATETHREAD$LONGINT$TTHREADENTRY$POINTER$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_311

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATETHREAD$LONGWORD$TTHREADENTRY$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATETHREAD$LONGWORD$TTHREADENTRY$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_311

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATETHREAD$LONGINT$POINTER$POINTER$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSCREATETHREAD$LONGINT$POINTER$POINTER$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_311

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATETHREAD$LONGWORD$POINTER$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATETHREAD$LONGWORD$POINTER$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_311

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSUSPENDTHREAD$LONGWORD$$LONGWORD
DOSCALLS_DOSSUSPENDTHREAD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_238

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSRESUMETHREAD$LONGWORD$$LONGWORD
DOSCALLS_DOSRESUMETHREAD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_237

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSKILLTHREAD$LONGWORD$$LONGWORD
DOSCALLS_DOSKILLTHREAD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_111

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITTHREAD$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSWAITTHREAD$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_349

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITTHREAD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSWAITTHREAD$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_349

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENTERCRITSEC$$LONGWORD
DOSCALLS_DOSENTERCRITSEC$$LONGWORD:
	jmp	_$dll$doscalls$_index_232

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEXITCRITSEC$$LONGWORD
DOSCALLS_DOSEXITCRITSEC$$LONGWORD:
	jmp	_$dll$doscalls$_index_233

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEXIT$LONGWORD$LONGWORD
DOSCALLS_DOSEXIT$LONGWORD$LONGWORD:
	jmp	_$dll$doscalls$_index_234

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGETINFOBLOCKS$PTHREADINFOBLOCK$PPROCESSINFOBLOCK
DOSCALLS_DOSGETINFOBLOCKS$PTHREADINFOBLOCK$PPROCESSINFOBLOCK:
	jmp	_$dll$doscalls$_index_312

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGETINFOBLOCKS$PPTHREADINFOBLOCK$PPPROCESSINFOBLOCK
DOSCALLS_DOSGETINFOBLOCKS$PPTHREADINFOBLOCK$PPPROCESSINFOBLOCK:
	jmp	_$dll$doscalls$_index_312

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSLEEP$LONGWORD
DOSCALLS_DOSSLEEP$LONGWORD:
	jmp	_$dll$doscalls$_index_229

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSBEEP$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSBEEP$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_286

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDEBUG$PDBGBUF$$LONGWORD
DOSCALLS_DOSDEBUG$PDBGBUF$$LONGWORD:
	jmp	_$dll$doscalls$_index_317

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDEBUG$TDBGBUF$$LONGWORD
DOSCALLS_DOSDEBUG$TDBGBUF$$LONGWORD:
	jmp	_$dll$doscalls$_index_317

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEXITLIST$LONGWORD$TEXITPROC$$LONGWORD
DOSCALLS_DOSEXITLIST$LONGWORD$TEXITPROC$$LONGWORD:
	jmp	_$dll$doscalls$_index_296

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEXECPGM$crcBEBB7C53
DOSCALLS_DOSEXECPGM$crcBEBB7C53:
	jmp	_$dll$doscalls$_index_283

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSEXECPGM$crc884BD775
DOSCALLS_DOSEXECPGM$crc884BD775:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$784,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-272(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$256
	leal	-528(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSEXECPGM$crcBEBB7C53
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	leal	-528(%ebp),%eax
	leal	-784(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-784(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITCHILD$LONGINT$LONGINT$TRESULTCODES$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSWAITCHILD$LONGINT$LONGINT$TRESULTCODES$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_280

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITCHILD$LONGWORD$LONGWORD$TRESULTCODES$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSWAITCHILD$LONGWORD$LONGWORD$TRESULTCODES$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_280

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETPRIORITY$LONGWORD$LONGWORD$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSSETPRIORITY$LONGWORD$LONGWORD$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_236

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSKILLPROCESS$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSKILLPROCESS$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_235

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYAPPTYPE$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYAPPTYPE$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_323

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYAPPTYPE$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYAPPTYPE$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_323

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDEVCONFIG$BYTE$LONGWORD$$LONGWORD
DOSCALLS_DOSDEVCONFIG$BYTE$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_231

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFILELOCKS$LONGINT$TFILELOCK$TFILELOCK$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSETFILELOCKS$LONGINT$TFILELOCK$TFILELOCK$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_428

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFILELOCKS$crcB3DFAA55
DOSCALLS_DOSPROTECTSETFILELOCKS$crcB3DFAA55:
	jmp	_$dll$doscalls$_index_639

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCANCELLOCKREQUEST$LONGINT$TFILELOCK$$LONGWORD
DOSCALLS_DOSCANCELLOCKREQUEST$LONGINT$TFILELOCK$$LONGWORD:
	jmp	_$dll$doscalls$_index_429

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPEN$crc9022049F
DOSCALLS_DOSOPEN$crc9022049F:
	jmp	_$dll$doscalls$_index_273

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPEN$crcB952359D
DOSCALLS_DOSOPEN$crcB952359D:
	jmp	_$dll$doscalls$_index_273

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATE$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATE$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$0
	pushl	8(%ebp)
	pushl	$18
	pushl	-12(%ebp)
	pushl	$0
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSOPEN$crcB952359D
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPEN$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSOPEN$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$0
	pushl	8(%ebp)
	pushl	$1
	pushl	-12(%ebp)
	pushl	$0
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSOPEN$crcB952359D
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPEN$crc72295F0E
DOSCALLS_DOSOPEN$crc72295F0E:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	24(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPEN$crc9022049F
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPEN$crc2925CD11
DOSCALLS_DOSOPEN$crc2925CD11:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	24(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPEN$crcB952359D
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATE$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATE$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	$0
	pushl	8(%ebp)
	pushl	$18
	pushl	-12(%ebp)
	pushl	$0
	leal	-276(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPEN$crcB952359D
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPEN$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSOPEN$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	$0
	pushl	8(%ebp)
	pushl	$1
	pushl	-12(%ebp)
	pushl	$0
	leal	-276(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPEN$crcB952359D
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTOPEN$crc48A18619
DOSCALLS_DOSPROTECTOPEN$crc48A18619:
	jmp	_$dll$doscalls$_index_637

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTOPEN$crc836B6F6A
DOSCALLS_DOSPROTECTOPEN$crc836B6F6A:
	jmp	_$dll$doscalls$_index_637

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTOPEN$crc5F9A110D
DOSCALLS_DOSPROTECTOPEN$crc5F9A110D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	24(%ebp)
	pushl	28(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSPROTECTOPEN$crc48A18619
	addl	$36,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTOPEN$crc1B2109D2
DOSCALLS_DOSPROTECTOPEN$crc1B2109D2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	24(%ebp)
	pushl	28(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSPROTECTOPEN$crc836B6F6A
	addl	$36,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$24

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCLOSE$LONGINT$$LONGWORD
DOSCALLS_DOSCLOSE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_257

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTCLOSE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTCLOSE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_638

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREAD$LONGINT$formal$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSREAD$LONGINT$formal$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_281

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREAD$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSREAD$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_281

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTREAD$LONGINT$formal$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTREAD$LONGINT$formal$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_641

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTREAD$LONGINT$formal$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTREAD$LONGINT$formal$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_641

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWRITE$LONGINT$formal$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSWRITE$LONGINT$formal$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_282

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWRITE$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSWRITE$LONGINT$formal$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_282

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTWRITE$LONGINT$formal$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTWRITE$LONGINT$formal$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_642

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTWRITE$LONGINT$formal$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTWRITE$LONGINT$formal$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_642

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGINT$$LONGWORD
DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_256

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_256

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_621

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_621

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSGETFILEPTR$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSGETFILEPTR$LONGINT$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$1
	pushl	$0
	pushl	-4(%ebp)
	call	DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGINT$$LONGWORD
	addl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSGETFILEPTR$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSGETFILEPTR$LONGINT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$1
	pushl	$0
	pushl	-4(%ebp)
	call	DOSCALLS_DOSSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTGETFILEPTR$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTGETFILEPTR$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$1
	pushl	$0
	pushl	-4(%ebp)
	call	DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTGETFILEPTR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTGETFILEPTR$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$1
	pushl	$0
	pushl	-4(%ebp)
	call	DOSCALLS_DOSPROTECTSETFILEPTR$LONGINT$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFILESIZE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSSETFILESIZE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_272

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFILESIZE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTSETFILESIZE$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_640

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSRESETBUFFER$LONGINT$$LONGWORD
DOSCALLS_DOSRESETBUFFER$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_254

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDUPHANDLE$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSDUPHANDLE$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_260

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFHSTATE$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYFHSTATE$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_276

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFHSTATE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYFHSTATE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_276

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTQUERYFHSTATE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTQUERYFHSTATE$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_645

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFHSTATE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSSETFHSTATE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_221

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFHSTATE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTSETFHSTATE$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_644

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYHTYPE$LONGINT$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYHTYPE$LONGINT$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_224

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYHTYPE$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYHTYPE$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_224

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEDITNAME$LONGWORD$PCHAR$PCHAR$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSEDITNAME$LONGWORD$PCHAR$PCHAR$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_261

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSEDITNAME$LONGWORD$SHORTSTRING$SHORTSTRING$SHORTSTRING$$LONGWORD
DOSCALLS_DOSEDITNAME$LONGWORD$SHORTSTRING$SHORTSTRING$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1040,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-528(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	$256
	leal	-784(%ebp),%eax
	pushl	%eax
	leal	-528(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSEDITNAME$LONGWORD$PCHAR$PCHAR$PCHAR$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	leal	-784(%ebp),%eax
	leal	-1040(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-1040(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSMOVE$PCHAR$PCHAR$$LONGWORD
DOSCALLS_DOSMOVE$PCHAR$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_271

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSMOVE$SHORTSTRING$SHORTSTRING$$LONGWORD
DOSCALLS_DOSMOVE$SHORTSTRING$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-524(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-524(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSMOVE$PCHAR$PCHAR$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCOPY$PCHAR$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSCOPY$PCHAR$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_258

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCOPY$SHORTSTRING$SHORTSTRING$LONGWORD$$LONGWORD
DOSCALLS_DOSCOPY$SHORTSTRING$SHORTSTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-528(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	-12(%ebp)
	leal	-528(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCOPY$PCHAR$PCHAR$LONGWORD$$LONGWORD
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDELETE$PCHAR$$LONGWORD
DOSCALLS_DOSDELETE$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_259

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSDELETE$SHORTSTRING$$LONGWORD
DOSCALLS_DOSDELETE$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-4(%ebp)
	leal	-264(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-264(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSDELETE$PCHAR$$LONGWORD
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFORCEDELETE$PCHAR$$LONGWORD
DOSCALLS_DOSFORCEDELETE$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_110

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSFORCEDELETE$SHORTSTRING$$LONGWORD
DOSCALLS_DOSFORCEDELETE$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-4(%ebp)
	leal	-264(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-264(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSFORCEDELETE$PCHAR$$LONGWORD
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEDIR$PCHAR$PEAOP2$$LONGWORD
DOSCALLS_DOSCREATEDIR$PCHAR$PEAOP2$$LONGWORD:
	jmp	_$dll$doscalls$_index_270

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEDIR$PCHAR$$LONGWORD
DOSCALLS_DOSCREATEDIR$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	pushl	-4(%ebp)
	call	DOSCALLS_DOSCREATEDIR$PCHAR$PEAOP2$$LONGWORD
	addl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEDIR$SHORTSTRING$PEAOP2$$LONGWORD
DOSCALLS_DOSCREATEDIR$SHORTSTRING$PEAOP2$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	-8(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATEDIR$PCHAR$PEAOP2$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEDIR$SHORTSTRING$$LONGWORD
DOSCALLS_DOSCREATEDIR$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	leal	-264(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	$0
	leal	-264(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATEDIR$PCHAR$PEAOP2$$LONGWORD
	addl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDELETEDIR$PCHAR$$LONGWORD
DOSCALLS_DOSDELETEDIR$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_226

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSDELETEDIR$SHORTSTRING$$LONGWORD
DOSCALLS_DOSDELETEDIR$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-4(%ebp)
	leal	-264(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-264(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSDELETEDIR$PCHAR$$LONGWORD
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETDEFAULTDISK$LONGWORD$$LONGWORD
DOSCALLS_DOSSETDEFAULTDISK$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_220

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCURRENTDISK$LONGINT$LONGINT
DOSCALLS_DOSQUERYCURRENTDISK$LONGINT$LONGINT:
	jmp	_$dll$doscalls$_index_275

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCURRENTDISK$LONGWORD$LONGWORD
DOSCALLS_DOSQUERYCURRENTDISK$LONGWORD$LONGWORD:
	jmp	_$dll$doscalls$_index_275

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETCURRENTDIR$PCHAR$$LONGWORD
DOSCALLS_DOSSETCURRENTDIR$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_255

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSSETCURRENTDIR$SHORTSTRING$$LONGWORD
DOSCALLS_DOSSETCURRENTDIR$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-4(%ebp)
	leal	-264(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-264(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSSETCURRENTDIR$PCHAR$$LONGWORD
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCURRENTDIR$LONGINT$formal$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYCURRENTDIR$LONGINT$formal$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_274

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCURRENTDIR$LONGWORD$formal$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYCURRENTDIR$LONGWORD$formal$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_274

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCURRENTDIR$LONGWORD$SHORTSTRING$$LONGWORD
DOSCALLS_DOSQUERYCURRENTDIR$LONGWORD$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$255,-272(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYCURRENTDIR$LONGWORD$formal$LONGWORD$$LONGWORD
	addl	$12,%esp
	movl	%eax,-12(%ebp)
	leal	-268(%ebp),%eax
	leal	-528(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-528(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDEVIOCTL$crc6CE7DBCE
DOSCALLS_DOSDEVIOCTL$crc6CE7DBCE:
	jmp	_$dll$doscalls$_index_284

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDEVIOCTL$crc03DCF442
DOSCALLS_DOSDEVIOCTL$crc03DCF442:
	jmp	_$dll$doscalls$_index_284

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFINDFIRST$crc6635243D
DOSCALLS_DOSFINDFIRST$crc6635243D:
	jmp	_$dll$doscalls$_index_264

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSFINDFIRST$crcAED03932
DOSCALLS_DOSFINDFIRST$crcAED03932:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSFINDFIRST$crc6635243D
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFINDNEXT$LONGINT$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSFINDNEXT$LONGINT$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_265

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFINDCLOSE$LONGINT$$LONGWORD
DOSCALLS_DOSFINDCLOSE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_263

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_279

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTQUERYFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTQUERYFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_646

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
DOSCALLS_DOSSETFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_218

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTSETFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSPROTECTSETFILEINFO$LONGINT$LONGWORD$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_643

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPATHINFO$PCHAR$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYPATHINFO$PCHAR$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_223

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPATHINFO$SHORTSTRING$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYPATHINFO$SHORTSTRING$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYPATHINFO$PCHAR$LONGWORD$PFILESTATUS$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETPATHINFO$PCHAR$LONGWORD$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSETPATHINFO$PCHAR$LONGWORD$PFILESTATUS$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_219

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$crc79DE5FC2
DOSCALLS_DOSENUMATTRIBUTE$crc79DE5FC2:
	jmp	_$dll$doscalls$_index_372

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$crc45E2E51F
DOSCALLS_DOSENUMATTRIBUTE$crc45E2E51F:
	jmp	_$dll$doscalls$_index_372

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$crc20D1AA32
DOSCALLS_DOSENUMATTRIBUTE$crc20D1AA32:
	jmp	_$dll$doscalls$_index_372

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$crcFA95E224
DOSCALLS_DOSENUMATTRIBUTE$crcFA95E224:
	jmp	_$dll$doscalls$_index_372

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTENUMATTRIBUTE$crc9D6E6220
DOSCALLS_DOSPROTECTENUMATTRIBUTE$crc9D6E6220:
	jmp	_$dll$doscalls$_index_636

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$LONGINT$LONGINT$formal$LONGINT$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSENUMATTRIBUTE$LONGINT$LONGINT$formal$LONGINT$LONGINT$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	DOSCALLS_DOSENUMATTRIBUTE$crc79DE5FC2
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$LONGINT$LONGWORD$formal$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSENUMATTRIBUTE$LONGINT$LONGWORD$formal$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	DOSCALLS_DOSENUMATTRIBUTE$crc45E2E51F
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTENUMATTRIBUTE$crcA5157B4C
DOSCALLS_DOSPROTECTENUMATTRIBUTE$crcA5157B4C:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	pushl	12(%ebp)
	movl	16(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	DOSCALLS_DOSPROTECTENUMATTRIBUTE$crc9D6E6220
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSENUMATTRIBUTE$crcDC8FD28A
DOSCALLS_DOSENUMATTRIBUTE$crcDC8FD28A:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	call	DOSCALLS_DOSENUMATTRIBUTE$crc45E2E51F
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPROTECTENUMATTRIBUTE$crcFFB61A8C
DOSCALLS_DOSPROTECTENUMATTRIBUTE$crcFFB61A8C:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	12(%ebp)
	movl	16(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	call	DOSCALLS_DOSPROTECTENUMATTRIBUTE$crc9D6E6220
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSCANENV$PCHAR$PCHAR$$LONGWORD
DOSCALLS_DOSSCANENV$PCHAR$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_227

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSSCANENV$SHORTSTRING$SHORTSTRING$$LONGWORD
DOSCALLS_DOSSCANENV$SHORTSTRING$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-272(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSSCANENV$PCHAR$PCHAR$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	leal	-528(%ebp),%edx
	movl	-272(%ebp),%eax
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-528(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSEARCHPATH$LONGWORD$PCHAR$PCHAR$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSSEARCHPATH$LONGWORD$PCHAR$PCHAR$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_228

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSSEARCHPATH$LONGWORD$SHORTSTRING$SHORTSTRING$SHORTSTRING$$LONGWORD
DOSCALLS_DOSSEARCHPATH$LONGWORD$SHORTSTRING$SHORTSTRING$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1040,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-528(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	$256
	leal	-784(%ebp),%eax
	pushl	%eax
	leal	-528(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSSEARCHPATH$LONGWORD$PCHAR$PCHAR$PCHAR$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	leal	-784(%ebp),%eax
	leal	-1040(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-1040(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFSATTACH$PCHAR$PCHAR$TATTACHDATA$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSFSATTACH$PCHAR$PCHAR$TATTACHDATA$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_269

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSFSATTACH$SHORTSTRING$SHORTSTRING$TATTACHDATA$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSFSATTACH$SHORTSTRING$SHORTSTRING$TATTACHDATA$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-528(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	leal	-528(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSFSATTACH$PCHAR$PCHAR$TATTACHDATA$LONGWORD$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFSATTACH$PCHAR$LONGINT$LONGINT$TFSQBUFFER2$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYFSATTACH$PCHAR$LONGINT$LONGINT$TFSQBUFFER2$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_277

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFSATTACH$PCHAR$LONGWORD$LONGWORD$TFSQBUFFER2$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYFSATTACH$PCHAR$LONGWORD$LONGWORD$TFSQBUFFER2$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_277

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFSATTACH$SHORTSTRING$LONGINT$LONGINT$TFSQBUFFER2$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYFSATTACH$SHORTSTRING$LONGINT$LONGINT$TFSQBUFFER2$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYFSATTACH$PCHAR$LONGINT$LONGINT$TFSQBUFFER2$LONGINT$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFSATTACH$SHORTSTRING$LONGWORD$LONGWORD$TFSQBUFFER2$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYFSATTACH$SHORTSTRING$LONGWORD$LONGWORD$TFSQBUFFER2$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYFSATTACH$PCHAR$LONGWORD$LONGWORD$TFSQBUFFER2$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFSCTL$crc8250036F
DOSCALLS_DOSFSCTL$crc8250036F:
	jmp	_$dll$doscalls$_index_285

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFSCTL$crcF178B65A
DOSCALLS_DOSFSCTL$crcF178B65A:
	jmp	_$dll$doscalls$_index_285

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSFSCTL$crcB61AB701
DOSCALLS_DOSFSCTL$crcB61AB701:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	16(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	32(%ebp)
	pushl	28(%ebp)
	movl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	movl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSFSCTL$crcB61AB701
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$28

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSFSCTL$crcF83AE900
DOSCALLS_DOSFSCTL$crcF83AE900:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	16(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	32(%ebp)
	pushl	28(%ebp)
	movl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	movl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSFSCTL$crcF83AE900
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$28

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYFSINFO$LONGWORD$LONGWORD$TFSINFO$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYFSINFO$LONGWORD$LONGWORD$TFSINFO$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_278

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETFSINFO$LONGWORD$LONGWORD$TFSINFO$LONGWORD$$LONGWORD
DOSCALLS_DOSSETFSINFO$LONGWORD$LONGWORD$TFSINFO$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_222

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYVERIFY$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYVERIFY$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_225

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYVERIFY$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYVERIFY$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_225

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYVERIFY$BOOLEAN$$LONGWORD
DOSCALLS_DOSQUERYVERIFY$BOOLEAN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYVERIFY$LONGWORD$$LONGWORD
	popl	%ebx
	movl	%eax,-16(%ebp)
	movb	-12(%ebp),%dl
	movl	-4(%ebp),%eax
	movb	%dl,(%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETVERIFY$LONGWORD$$LONGWORD
DOSCALLS_DOSSETVERIFY$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_210

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSSETVERIFY$BOOLEAN$$LONGWORD
DOSCALLS_DOSSETVERIFY$BOOLEAN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSSETVERIFY$LONGWORD$$LONGWORD
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETMAXFH$LONGWORD$$LONGWORD
DOSCALLS_DOSSETMAXFH$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_209

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETRELMAXFH$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSSETRELMAXFH$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_382

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETRELMAXFH$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSSETRELMAXFH$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_382

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSHUTDOWN$LONGWORD$$LONGWORD
DOSCALLS_DOSSHUTDOWN$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_415

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYSYSINFO$LONGWORD$LONGWORD$formal$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYSYSINFO$LONGWORD$LONGWORD$formal$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_348

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYSYSINFO$LONGWORD$LONGWORD$PQSVVALUES$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYSYSINFO$LONGWORD$LONGWORD$PQSVVALUES$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_348

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPHYSICALDISK$LONGWORD$POINTER$LONGWORD$POINTER$LONGWORD$$LONGWORD
DOSCALLS_DOSPHYSICALDISK$LONGWORD$POINTER$LONGWORD$POINTER$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_287

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSALLOCMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSALLOCMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_299

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFREEMEM$POINTER$$LONGWORD
DOSCALLS_DOSFREEMEM$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_304

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSETMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_305

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGIVESHAREDMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSGIVESHAREDMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_303

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGETSHAREDMEM$POINTER$LONGWORD$$LONGWORD
DOSCALLS_DOSGETSHAREDMEM$POINTER$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_302

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGETNAMEDSHAREDMEM$POINTER$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSGETNAMEDSHAREDMEM$POINTER$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_301

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSGETNAMEDSHAREDMEM$POINTER$SHORTSTRING$LONGWORD$$LONGWORD
DOSCALLS_DOSGETNAMEDSHAREDMEM$POINTER$SHORTSTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	-12(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSGETNAMEDSHAREDMEM$POINTER$PCHAR$LONGWORD$$LONGWORD
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSALLOCSHAREDMEM$POINTER$PCHAR$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSALLOCSHAREDMEM$POINTER$PCHAR$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_300

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSALLOCSHAREDMEM$POINTER$SHORTSTRING$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSALLOCSHAREDMEM$POINTER$SHORTSTRING$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj805
	jmp	Lj806
Lj805:
	leal	-272(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	-12(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSALLOCSHAREDMEM$POINTER$PCHAR$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj821
Lj806:
	pushl	8(%ebp)
	pushl	-12(%ebp)
	pushl	$0
	movl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSALLOCSHAREDMEM$POINTER$PCHAR$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
Lj821:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMEM$POINTER$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMEM$POINTER$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_306

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_306

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSUBALLOCMEM$POINTER$POINTER$LONGWORD$$LONGWORD
DOSCALLS_DOSSUBALLOCMEM$POINTER$POINTER$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_345

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSUBFREEMEM$POINTER$POINTER$LONGWORD$$LONGWORD
DOSCALLS_DOSSUBFREEMEM$POINTER$POINTER$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_346

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSUBSETMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSUBSETMEM$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_344

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSUBUNSETMEM$POINTER$$LONGWORD
DOSCALLS_DOSSUBUNSETMEM$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_347

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_324

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$BOOLEAN$$LONGWORD
DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$BOOLEAN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzbl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEEVENTSEM$SHORTSTRING$LONGINT$LONGWORD$BOOLEAN$$LONGWORD
DOSCALLS_DOSCREATEEVENTSEM$SHORTSTRING$LONGINT$LONGWORD$BOOLEAN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj848
	jmp	Lj849
Lj848:
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movzbl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj866
Lj849:
	movzbl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	DOSCALLS_DOSCREATEEVENTSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
Lj866:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEEVENTSEM$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEEVENTSEM$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	8(%ebp),%al
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSCREATEEVENTSEM$SHORTSTRING$LONGINT$LONGWORD$BOOLEAN$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENEVENTSEM$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSOPENEVENTSEM$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_325

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENEVENTSEM$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSOPENEVENTSEM$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPENEVENTSEM$PCHAR$LONGINT$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCLOSEEVENTSEM$LONGINT$$LONGWORD
DOSCALLS_DOSCLOSEEVENTSEM$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_326

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSRESETEVENTSEM$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSRESETEVENTSEM$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_327

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSRESETEVENTSEM$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSRESETEVENTSEM$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_327

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPOSTEVENTSEM$LONGINT$$LONGWORD
DOSCALLS_DOSPOSTEVENTSEM$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_328

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITEVENTSEM$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSWAITEVENTSEM$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_329

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYEVENTSEM$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYEVENTSEM$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_330

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYEVENTSEM$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYEVENTSEM$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_330

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_331

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$BOOLEAN$$LONGWORD
DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$BOOLEAN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzbl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUTEXSEM$SHORTSTRING$LONGINT$LONGWORD$BOOLEAN$$LONGWORD
DOSCALLS_DOSCREATEMUTEXSEM$SHORTSTRING$LONGINT$LONGWORD$BOOLEAN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj921
	jmp	Lj922
Lj921:
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movzbl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj939
Lj922:
	movzbl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	DOSCALLS_DOSCREATEMUTEXSEM$PCHAR$LONGINT$LONGWORD$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
Lj939:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUTEXSEM$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEMUTEXSEM$SHORTSTRING$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	8(%ebp),%al
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSCREATEMUTEXSEM$SHORTSTRING$LONGINT$LONGWORD$BOOLEAN$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENMUTEXSEM$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSOPENMUTEXSEM$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_332

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENMUTEXSEM$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSOPENMUTEXSEM$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPENMUTEXSEM$PCHAR$LONGINT$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCLOSEMUTEXSEM$LONGINT$$LONGWORD
DOSCALLS_DOSCLOSEMUTEXSEM$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_333

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREQUESTMUTEXSEM$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSREQUESTMUTEXSEM$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_334

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSRELEASEMUTEXSEM$LONGINT$$LONGWORD
DOSCALLS_DOSRELEASEMUTEXSEM$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_335

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMUTEXSEM$LONGINT$LONGINT$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMUTEXSEM$LONGINT$LONGINT$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_336

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMUTEXSEM$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYMUTEXSEM$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_336

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUXWAITSEM$PCHAR$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEMUXWAITSEM$PCHAR$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_337

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUXWAITSEM$PCHAR$LONGINT$LONGWORD$PSEMARRAY$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEMUXWAITSEM$PCHAR$LONGINT$LONGWORD$PSEMARRAY$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_337

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEMUXWAITSEM$SHORTSTRING$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEMUXWAITSEM$SHORTSTRING$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj980
	jmp	Lj981
Lj980:
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATEMUXWAITSEM$PCHAR$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj998
Lj981:
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	DOSCALLS_DOSCREATEMUXWAITSEM$PCHAR$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD
	addl	$20,%esp
	movl	%eax,-16(%ebp)
Lj998:
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENMUXWAITSEM$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSOPENMUXWAITSEM$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_338

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENMUXWAITSEM$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSOPENMUXWAITSEM$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPENMUXWAITSEM$PCHAR$LONGINT$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCLOSEMUXWAITSEM$LONGINT$$LONGWORD
DOSCALLS_DOSCLOSEMUXWAITSEM$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_339

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITMUXWAITSEM$LONGINT$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSWAITMUXWAITSEM$LONGINT$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_340

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITMUXWAITSEM$LONGINT$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSWAITMUXWAITSEM$LONGINT$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_340

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSADDMUXWAITSEM$LONGINT$TSEMRECORD$$LONGWORD
DOSCALLS_DOSADDMUXWAITSEM$LONGINT$TSEMRECORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_341

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDELETEMUXWAITSEM$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSDELETEMUXWAITSEM$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_342

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMUXWAITSEM$LONGINT$LONGINT$TSEMARRAY$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMUXWAITSEM$LONGINT$LONGINT$TSEMARRAY$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_343

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMUXWAITSEM$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYMUXWAITSEM$LONGINT$LONGWORD$TSEMARRAY$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_343

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGETDATETIME$TDATETIME$$LONGWORD
DOSCALLS_DOSGETDATETIME$TDATETIME$$LONGWORD:
	jmp	_$dll$doscalls$_index_230

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETDATETIME$TDATETIME$$LONGWORD
DOSCALLS_DOSSETDATETIME$TDATETIME$$LONGWORD:
	jmp	_$dll$doscalls$_index_292

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSASYNCTIMER$LONGWORD$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSASYNCTIMER$LONGWORD$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_350

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSTARTTIMER$LONGWORD$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSSTARTTIMER$LONGWORD$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_351

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSTOPTIMER$LONGINT$$LONGWORD
DOSCALLS_DOSSTOPTIMER$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_290

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSTMRQUERYFREQ$LONGINT$$LONGWORD
DOSCALLS_DOSTMRQUERYFREQ$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_362

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSTMRQUERYFREQ$LONGWORD$$LONGWORD
DOSCALLS_DOSTMRQUERYFREQ$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_362

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSTMRQUERYTIME$COMP$$LONGWORD
DOSCALLS_DOSTMRQUERYTIME$COMP$$LONGWORD:
	jmp	_$dll$doscalls$_index_363

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSTMRQUERYTIME$QWORD$$LONGWORD
DOSCALLS_DOSTMRQUERYTIME$QWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_363

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSLOADMODULE$PCHAR$LONGWORD$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSLOADMODULE$PCHAR$LONGWORD$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_318

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSLOADMODULE$SHORTSTRING$LONGWORD$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSLOADMODULE$SHORTSTRING$LONGWORD$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$784,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-528(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-528(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSLOADMODULE$PCHAR$LONGWORD$PCHAR$LONGINT$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	leal	-272(%ebp),%eax
	leal	-784(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-784(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFREEMODULE$LONGINT$$LONGWORD
DOSCALLS_DOSFREEMODULE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_322

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPROCADDR$LONGINT$LONGWORD$PCHAR$POINTER$$LONGWORD
DOSCALLS_DOSQUERYPROCADDR$LONGINT$LONGWORD$PCHAR$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_321

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPROCADDR$LONGINT$LONGWORD$SHORTSTRING$POINTER$$LONGWORD
DOSCALLS_DOSQUERYPROCADDR$LONGINT$LONGWORD$SHORTSTRING$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1051
	jmp	Lj1052
Lj1051:
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYPROCADDR$LONGINT$LONGWORD$PCHAR$POINTER$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj1067
Lj1052:
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYPROCADDR$LONGINT$LONGWORD$PCHAR$POINTER$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
Lj1067:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMODULEHANDLE$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMODULEHANDLE$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_319

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMODULEHANDLE$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMODULEHANDLE$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSQUERYMODULEHANDLE$PCHAR$LONGINT$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMODULENAME$LONGINT$LONGWORD$PCHAR$$LONGWORD
DOSCALLS_DOSQUERYMODULENAME$LONGINT$LONGWORD$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_320

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGINT$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGINT$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_586

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGWORD$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGWORD$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_586

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGINT$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGINT$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1092
	jmp	Lj1093
Lj1092:
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGINT$PCHAR$LONGINT$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj1108
Lj1093:
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGINT$PCHAR$LONGINT$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
Lj1108:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGWORD$SHORTSTRING$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGWORD$SHORTSTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1121
	jmp	Lj1122
Lj1121:
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj1137
Lj1122:
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	DOSCALLS_DOSQUERYPROCTYPE$LONGINT$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	addl	$16,%esp
	movl	%eax,-16(%ebp)
Lj1137:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSGETRESOURCE$LONGINT$LONGWORD$LONGWORD$POINTER$$LONGWORD
DOSCALLS_DOSGETRESOURCE$LONGINT$LONGWORD$LONGWORD$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_352

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFREERESOURCE$POINTER$$LONGWORD
DOSCALLS_DOSFREERESOURCE$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_353

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYRESOURCESIZE$LONGINT$LONGINT$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYRESOURCESIZE$LONGINT$LONGINT$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_572

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYRESOURCESIZE$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYRESOURCESIZE$LONGINT$LONGWORD$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_572

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCTRYINFO$LONGINT$TCOUNTRYCODE$TCOUNTRYINFO$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYCTRYINFO$LONGINT$TCOUNTRYCODE$TCOUNTRYINFO$LONGINT$$LONGWORD:
	jmp	_$dll$nls$_index_5

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCTRYINFO$LONGWORD$TCOUNTRYCODE$TCOUNTRYINFO$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYCTRYINFO$LONGWORD$TCOUNTRYCODE$TCOUNTRYINFO$LONGWORD$$LONGWORD:
	jmp	_$dll$nls$_index_5

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYDBCSENV$LONGWORD$TCOUNTRYCODE$PCHAR$$LONGWORD
DOSCALLS_DOSQUERYDBCSENV$LONGWORD$TCOUNTRYCODE$PCHAR$$LONGWORD:
	jmp	_$dll$nls$_index_6

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSMAPCASE$LONGWORD$TCOUNTRYCODE$PCHAR$$LONGWORD
DOSCALLS_DOSMAPCASE$LONGWORD$TCOUNTRYCODE$PCHAR$$LONGWORD:
	jmp	_$dll$nls$_index_7

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSMAPCASE$TCOUNTRYCODE$SHORTSTRING$$LONGWORD
DOSCALLS_DOSMAPCASE$TCOUNTRYCODE$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-8(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-268(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	pushl	%eax
	call	DOSCALLS_DOSMAPCASE$LONGWORD$TCOUNTRYCODE$PCHAR$$LONGWORD
	addl	$12,%esp
	movl	%eax,-12(%ebp)
	leal	-268(%ebp),%eax
	leal	-524(%ebp),%edx
	call	STRINGS_STRPAS$PCHAR$$SHORTSTRING
	leal	-524(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCOLLATE$LONGINT$TCOUNTRYCODE$PBYTEARRAY$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYCOLLATE$LONGINT$TCOUNTRYCODE$PBYTEARRAY$LONGINT$$LONGWORD:
	jmp	_$dll$nls$_index_8

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCOLLATE$LONGWORD$TCOUNTRYCODE$PBYTEARRAY$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYCOLLATE$LONGWORD$TCOUNTRYCODE$PBYTEARRAY$LONGWORD$$LONGWORD:
	jmp	_$dll$nls$_index_8

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCP$LONGINT$PWORDARRAY$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYCP$LONGINT$PWORDARRAY$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_291

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYCP$LONGWORD$PWORDARRAY$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYCP$LONGWORD$PWORDARRAY$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_291

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETPROCESSCP$LONGWORD$$LONGWORD
DOSCALLS_DOSSETPROCESSCP$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_289

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETEXCEPTIONHANDLER$TEXCEPTIONREGISTRATIONRECORD$$LONGWORD
DOSCALLS_DOSSETEXCEPTIONHANDLER$TEXCEPTIONREGISTRATIONRECORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_354

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSUNSETEXCEPTIONHANDLER$TEXCEPTIONREGISTRATIONRECORD$$LONGWORD
DOSCALLS_DOSUNSETEXCEPTIONHANDLER$TEXCEPTIONREGISTRATIONRECORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_355

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSRAISEEXCEPTION$TEXCEPTIONREPORTRECORD$$LONGWORD
DOSCALLS_DOSRAISEEXCEPTION$TEXCEPTIONREPORTRECORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_356

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSENDSIGNALEXCEPTION$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSENDSIGNALEXCEPTION$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_379

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSUNWINDEXCEPTION$crc89719D35
DOSCALLS_DOSUNWINDEXCEPTION$crc89719D35:
	jmp	_$dll$doscalls$_index_357

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_378

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_378

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$BOOLEAN$LONGWORD$$LONGWORD
DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$BOOLEAN$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSSETSIGNALEXCEPTIONFOCUS$LONGWORD$LONGWORD$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENTERMUSTCOMPLETE$LONGINT$$LONGWORD
DOSCALLS_DOSENTERMUSTCOMPLETE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_380

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSENTERMUSTCOMPLETE$LONGWORD$$LONGWORD
DOSCALLS_DOSENTERMUSTCOMPLETE$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_380

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEXITMUSTCOMPLETE$LONGINT$$LONGWORD
DOSCALLS_DOSEXITMUSTCOMPLETE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_381

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSEXITMUSTCOMPLETE$LONGWORD$$LONGWORD
DOSCALLS_DOSEXITMUSTCOMPLETE$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_381

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSACKNOWLEDGESIGNALEXCEPTION$LONGWORD$$LONGWORD
DOSCALLS_DOSACKNOWLEDGESIGNALEXCEPTION$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_418

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCLOSEQUEUE$LONGINT$$LONGWORD
DOSCALLS_DOSCLOSEQUEUE$LONGINT$$LONGWORD:
	jmp	_$dll$quecalls$_index_11

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEQUEUE$LONGINT$LONGWORD$PCHAR$$LONGWORD
DOSCALLS_DOSCREATEQUEUE$LONGINT$LONGWORD$PCHAR$$LONGWORD:
	jmp	_$dll$quecalls$_index_16

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEQUEUE$LONGINT$LONGWORD$SHORTSTRING$$LONGWORD
DOSCALLS_DOSCREATEQUEUE$LONGINT$LONGWORD$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	movl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATEQUEUE$LONGINT$LONGWORD$PCHAR$$LONGWORD
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENQUEUE$LONGINT$LONGINT$PCHAR$$LONGWORD
DOSCALLS_DOSOPENQUEUE$LONGINT$LONGINT$PCHAR$$LONGWORD:
	jmp	_$dll$quecalls$_index_15

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENQUEUE$LONGWORD$LONGINT$PCHAR$$LONGWORD
DOSCALLS_DOSOPENQUEUE$LONGWORD$LONGINT$PCHAR$$LONGWORD:
	jmp	_$dll$quecalls$_index_15

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENQUEUE$LONGINT$LONGINT$SHORTSTRING$$LONGWORD
DOSCALLS_DOSOPENQUEUE$LONGINT$LONGINT$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-272(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPENQUEUE$LONGINT$LONGINT$PCHAR$$LONGWORD
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENQUEUE$LONGWORD$LONGINT$SHORTSTRING$$LONGWORD
DOSCALLS_DOSOPENQUEUE$LONGWORD$LONGINT$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	leal	-272(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSOPENQUEUE$LONGWORD$LONGINT$PCHAR$$LONGWORD
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPEEKQUEUE$crc3384131D
DOSCALLS_DOSPEEKQUEUE$crc3384131D:
	jmp	_$dll$quecalls$_index_13

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPEEKQUEUE$crc7D790A3F
DOSCALLS_DOSPEEKQUEUE$crc7D790A3F:
	jmp	_$dll$quecalls$_index_13

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPEEKQUEUE$crc7E963188
DOSCALLS_DOSPEEKQUEUE$crc7E963188:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	movzbl	16(%ebp),%eax
	pushl	%eax
	movl	20(%ebp),%eax
	pushl	%eax
	movl	24(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSPEEKQUEUE$crc7D790A3F
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$20

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPURGEQUEUE$LONGINT$$LONGWORD
DOSCALLS_DOSPURGEQUEUE$LONGINT$$LONGWORD:
	jmp	_$dll$quecalls$_index_10

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYQUEUE$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYQUEUE$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$quecalls$_index_12

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYQUEUE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYQUEUE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$quecalls$_index_12

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREADQUEUE$crc3384131D
DOSCALLS_DOSREADQUEUE$crc3384131D:
	jmp	_$dll$quecalls$_index_9

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREADQUEUE$crc7D790A3F
DOSCALLS_DOSREADQUEUE$crc7D790A3F:
	jmp	_$dll$quecalls$_index_9

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSREADQUEUE$crc7E963188
DOSCALLS_DOSREADQUEUE$crc7E963188:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	movzbl	16(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	movl	24(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSREADQUEUE$crc7D790A3F
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$20

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWRITEQUEUE$LONGINT$LONGWORD$LONGWORD$formal$LONGWORD$$LONGWORD
DOSCALLS_DOSWRITEQUEUE$LONGINT$LONGWORD$LONGWORD$formal$LONGWORD$$LONGWORD:
	jmp	_$dll$quecalls$_index_14

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSERROR$LONGWORD$$LONGWORD
DOSCALLS_DOSERROR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_212

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSERRCLASS$LONGINT$LONGINT$LONGINT$LONGINT
DOSCALLS_DOSERRCLASS$LONGINT$LONGINT$LONGINT$LONGINT:
	jmp	_$dll$doscalls$_index_211

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSERRCLASS$LONGWORD$LONGWORD$LONGWORD$LONGWORD
DOSCALLS_DOSERRCLASS$LONGWORD$LONGWORD$LONGWORD$LONGWORD:
	jmp	_$dll$doscalls$_index_211

.text
	.balign 4,0x90
DOSCALLS_MAGICHEADERSTART:
	.byte	255
	.byte	77
	.byte	83
	.byte	71
	.byte	83
	.byte	69
	.byte	71
	.byte	51
	.byte	50
	.byte	0
	.long	32769
	.long	DOSCALLS_MAGICHEADEREND
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSGETMESSAGE$crc33EDB701
DOSCALLS_DOSGETMESSAGE$crc33EDB701:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	movl	$DOSCALLS_MAGICHEADERSTART,%eax
	pushl	%eax
	call	_$dll$msg$_index_6
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSGETMESSAGE$crc8D08E7F7
DOSCALLS_DOSGETMESSAGE$crc8D08E7F7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	movl	$DOSCALLS_MAGICHEADERSTART,%eax
	pushl	%eax
	call	_$dll$msg$_index_6
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMESSAGECP$formal$LONGWORD$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYMESSAGECP$formal$LONGWORD$PCHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$DOSCALLS_MAGICHEADERSTART,%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	movl	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$msg$_index_8
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMESSAGECP$formal$LONGINT$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMESSAGECP$formal$LONGINT$PCHAR$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$DOSCALLS_MAGICHEADERSTART,%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	movl	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$msg$_index_8
	addl	$20,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
DOSCALLS_MAGICHEADEREND:
	.long	-65536
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMESSAGECP$formal$LONGINT$SHORTSTRING$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYMESSAGECP$formal$LONGINT$SHORTSTRING$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSQUERYMESSAGECP$formal$LONGINT$PCHAR$LONGINT$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYMESSAGECP$formal$LONGWORD$SHORTSTRING$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYMESSAGECP$formal$LONGWORD$SHORTSTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-12(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DOSCALLS_DOSQUERYMESSAGECP$formal$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSINSERTMESSAGE$crc6A3B8CBB
DOSCALLS_DOSINSERTMESSAGE$crc6A3B8CBB:
	jmp	_$dll$msg$_index_4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSINSERTMESSAGE$crc7DE1E361
DOSCALLS_DOSINSERTMESSAGE$crc7DE1E361:
	jmp	_$dll$msg$_index_4

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPUTMESSAGE$LONGINT$LONGWORD$PCHAR$$LONGWORD
DOSCALLS_DOSPUTMESSAGE$LONGINT$LONGWORD$PCHAR$$LONGWORD:
	jmp	_$dll$msg$_index_5

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSPUTMESSAGE$LONGINT$SHORTSTRING$$LONGWORD
DOSCALLS_DOSPUTMESSAGE$LONGINT$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	DOSCALLS_DOSPUTMESSAGE$LONGINT$LONGWORD$PCHAR$$LONGWORD
	addl	$12,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSTARTSESSION$TSTARTDATA$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSSTARTSESSION$TSTARTDATA$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$sesmgr$_index_37

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSTARTSESSION$TSTARTDATA$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSTARTSESSION$TSTARTDATA$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$sesmgr$_index_37

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETSESSION$LONGWORD$TSTATUSDATA$$LONGWORD
DOSCALLS_DOSSETSESSION$LONGWORD$TSTATUSDATA$$LONGWORD:
	jmp	_$dll$sesmgr$_index_39

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSELECTSESSION$LONGWORD$$LONGWORD
DOSCALLS_DOSSELECTSESSION$LONGWORD$$LONGWORD:
	jmp	_$dll$sesmgr$_index_38

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSTOPSESSION$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSSTOPSESSION$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$sesmgr$_index_40

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATEPIPE$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSCREATEPIPE$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_239

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATENPIPE$crc832A1474
DOSCALLS_DOSCREATENPIPE$crc832A1474:
	jmp	_$dll$doscalls$_index_243

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCREATENPIPE$crc04C0BCFD
DOSCALLS_DOSCREATENPIPE$crc04C0BCFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCREATENPIPE$crc832A1474
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCALLNPIPE$PCHAR$formal$LONGINT$formal$LONGINT$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSCALLNPIPE$PCHAR$formal$LONGINT$formal$LONGINT$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_240

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCALLNPIPE$crc9C4A3899
DOSCALLS_DOSCALLNPIPE$crc9C4A3899:
	jmp	_$dll$doscalls$_index_240

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCALLNPIPE$crcAF3E18C9
DOSCALLS_DOSCALLNPIPE$crcAF3E18C9:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	movl	20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCALLNPIPE$PCHAR$formal$LONGINT$formal$LONGINT$LONGINT$LONGINT$$LONGWORD
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSCALLNPIPE$crcDBB5DF61
DOSCALLS_DOSCALLNPIPE$crcDBB5DF61:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-272(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	8(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	movl	20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-272(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSCALLNPIPE$crc9C4A3899
	addl	$28,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCONNECTNPIPE$LONGINT$$LONGWORD
DOSCALLS_DOSCONNECTNPIPE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_241

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSDISCONNECTNPIPE$LONGINT$$LONGWORD
DOSCALLS_DOSDISCONNECTNPIPE$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_242

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPEEKNPIPE$LONGINT$formal$LONGINT$LONGINT$TAVAILDATA$LONGINT$$LONGWORD
DOSCALLS_DOSPEEKNPIPE$LONGINT$formal$LONGINT$LONGINT$TAVAILDATA$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_244

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSPEEKNPIPE$LONGINT$formal$LONGWORD$LONGWORD$TAVAILDATA$LONGWORD$$LONGWORD
DOSCALLS_DOSPEEKNPIPE$LONGINT$formal$LONGWORD$LONGWORD$TAVAILDATA$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_244

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYNPHSTATE$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSQUERYNPHSTATE$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_245

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYNPHSTATE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYNPHSTATE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_245

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYNPIPEINFO$LONGINT$LONGWORD$formal$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYNPIPEINFO$LONGINT$LONGWORD$formal$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_248

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYNPIPESEMSTATE$LONGINT$formal$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYNPIPESEMSTATE$LONGINT$formal$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_249

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYNPIPESEMSTATE$LONGINT$PPIPESEMSTATE$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYNPIPESEMSTATE$LONGINT$PPIPESEMSTATE$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_249

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETNPHSTATE$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSSETNPHSTATE$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_250

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSETNPIPESEM$LONGINT$LONGINT$LONGWORD$$LONGWORD
DOSCALLS_DOSSETNPIPESEM$LONGINT$LONGINT$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_251

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSTRANSACTNPIPE$LONGINT$formal$LONGINT$formal$LONGINT$LONGINT$$LONGWORD
DOSCALLS_DOSTRANSACTNPIPE$LONGINT$formal$LONGINT$formal$LONGINT$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_252

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSTRANSACTNPIPE$LONGINT$formal$LONGWORD$formal$LONGWORD$LONGWORD$$LONGWORD
DOSCALLS_DOSTRANSACTNPIPE$LONGINT$formal$LONGWORD$formal$LONGWORD$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_252

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITNPIPE$PCHAR$LONGWORD$$LONGWORD
DOSCALLS_DOSWAITNPIPE$PCHAR$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_253

.text
	.balign 4,0x90
.globl	DOSCALLS_DOSWAITNPIPE$SHORTSTRING$LONGWORD$$LONGWORD
DOSCALLS_DOSWAITNPIPE$SHORTSTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	call	STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
	pushl	-8(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	call	DOSCALLS_DOSWAITNPIPE$PCHAR$LONGWORD$$LONGWORD
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSOPENVDD$PCHAR$LONGINT$$LONGWORD
DOSCALLS_DOSOPENVDD$PCHAR$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_308

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREQUESTVDD$crc5F288726
DOSCALLS_DOSREQUESTVDD$crc5F288726:
	jmp	_$dll$doscalls$_index_309

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSCLOSEVDD$LONGINT$$LONGWORD
DOSCALLS_DOSCLOSEVDD$LONGINT$$LONGWORD:
	jmp	_$dll$doscalls$_index_310

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSSELTOFLAT
DOSCALLS_DOSSELTOFLAT:
	jmp	_$dll$doscalls$_index_426

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFLATTOSEL
DOSCALLS_DOSFLATTOSEL:
	jmp	_$dll$doscalls$_index_425

.text
	.balign 4,0x90
.globl	DOSCALLS_SELTOFLAT$LONGWORD$$POINTER
DOSCALLS_SELTOFLAT$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	call	DOSCALLS_DOSSELTOFLAT
	popl	%edi
	popl	%esi
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	DOSCALLS_SELTOFLAT$TFARPTR$$POINTER
DOSCALLS_SELTOFLAT$TFARPTR$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	8(%ebp),%eax
	call	DOSCALLS_DOSSELTOFLAT
	popl	%edi
	popl	%esi
	popl	%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DOSCALLS_FLATTOSEL$POINTER$$LONGWORD
DOSCALLS_FLATTOSEL$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	call	DOSCALLS_DOSFLATTOSEL
	popl	%edi
	popl	%esi
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSALLOCTHREADLOCALMEMORY$LONGWORD$POINTER$$LONGWORD
DOSCALLS_DOSALLOCTHREADLOCALMEMORY$LONGWORD$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_454

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSFREETHREADLOCALMEMORY$POINTER$$LONGWORD
DOSCALLS_DOSFREETHREADLOCALMEMORY$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_455

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYRASINFO$LONGWORD$POINTER$$LONGWORD
DOSCALLS_DOSQUERYRASINFO$LONGWORD$POINTER$$LONGWORD:
	jmp	_$dll$doscalls$_index_112

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_LOGOPEN$LONGWORD$$LONGWORD
DOSCALLS_LOGOPEN$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_430

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_LOGCLOSE$LONGWORD$$LONGWORD
DOSCALLS_LOGCLOSE$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_431

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_LOGADDENTRIES$LONGWORD$LONGWORD$PLOGENTRYREC$$LONGWORD
DOSCALLS_LOGADDENTRIES$LONGWORD$LONGWORD$PLOGENTRYREC$$LONGWORD:
	jmp	_$dll$doscalls$_index_432

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_LOGADDENTRIES$LONGWORD$LONGWORD$TLOGENTRYREC$$LONGWORD
DOSCALLS_LOGADDENTRIES$LONGWORD$LONGWORD$TLOGENTRYREC$$LONGWORD:
	jmp	_$dll$doscalls$_index_432

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSREPLACEMODULE$PCHAR$PCHAR$PCHAR$$LONGWORD
DOSCALLS_DOSREPLACEMODULE$PCHAR$PCHAR$PCHAR$$LONGWORD:
	jmp	_$dll$doscalls$_index_417

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYSYSSTATE$LONGWORD$LONGWORD$LONGWORD$LONGWORD$formal$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYSYSSTATE$LONGWORD$LONGWORD$LONGWORD$LONGWORD$formal$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_368

.text
	.balign 4,0x90
	.balign 4,0x90
.globl	DOSCALLS_DOSQUERYSYSSTATE$LONGWORD$LONGWORD$LONGWORD$LONGWORD$POINTER$LONGWORD$$LONGWORD
DOSCALLS_DOSQUERYSYSSTATE$LONGWORD$LONGWORD$LONGWORD$LONGWORD$POINTER$LONGWORD$$LONGWORD:
	jmp	_$dll$doscalls$_index_368
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_DOSCALLS
THREADVARLIST_DOSCALLS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	TC_DOSCALLS_CURRENTCOUNTRY
TC_DOSCALLS_CURRENTCOUNTRY:
	.long	0,0
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
.globl	INIT_DOSCALLS_TBYTEARRAY
INIT_DOSCALLS_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,65521
	.long	INIT_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOSCALLS_TBYTEARRAY
RTTI_DOSCALLS_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,65521
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	INIT_DOSCALLS_PBYTEARRAY
INIT_DOSCALLS_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PBYTEARRAY
RTTI_DOSCALLS_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.data
	.balign 4
.globl	INIT_DOSCALLS_TCHARARRAY
INIT_DOSCALLS_TCHARARRAY:
	.byte	12
	.ascii	"\012TCharArray"
	.long	1,65521
	.long	INIT_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TCHARARRAY
RTTI_DOSCALLS_TCHARARRAY:
	.byte	12
	.ascii	"\012TCharArray"
	.long	1,65521
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	INIT_DOSCALLS_PCHARARRAY
INIT_DOSCALLS_PCHARARRAY:
	.byte	0
	.ascii	"\012PCharArray"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PCHARARRAY
RTTI_DOSCALLS_PCHARARRAY:
	.byte	0
	.ascii	"\012PCharArray"

.data
	.balign 4
.globl	INIT_DOSCALLS_TWORDARRAY
INIT_DOSCALLS_TWORDARRAY:
	.byte	12
	.ascii	"\012TWordArray"
	.long	2,32761
	.long	INIT_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_DOSCALLS_TWORDARRAY
RTTI_DOSCALLS_TWORDARRAY:
	.byte	12
	.ascii	"\012TWordArray"
	.long	2,32761
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	INIT_DOSCALLS_PWORDARRAY
INIT_DOSCALLS_PWORDARRAY:
	.byte	0
	.ascii	"\012PWordArray"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PWORDARRAY
RTTI_DOSCALLS_PWORDARRAY:
	.byte	0
	.ascii	"\012PWordArray"

.data
	.balign 4
.globl	INIT_DOSCALLS_TTHREADENTRY
INIT_DOSCALLS_TTHREADENTRY:
	.byte	23,12
	.ascii	"TThreadEntry"

.data
	.balign 4
.globl	RTTI_DOSCALLS_TTHREADENTRY
RTTI_DOSCALLS_TTHREADENTRY:
	.byte	23,12
	.ascii	"TThreadEntry"

.data
	.balign 4
.globl	INIT_DOSCALLS_PTHREADINFOBLOCK
INIT_DOSCALLS_PTHREADINFOBLOCK:
	.byte	0
	.ascii	"\020PThreadInfoBlock"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PTHREADINFOBLOCK
RTTI_DOSCALLS_PTHREADINFOBLOCK:
	.byte	0
	.ascii	"\020PThreadInfoBlock"

.data
	.balign 4
.globl	INIT_DOSCALLS_PPTHREADINFOBLOCK
INIT_DOSCALLS_PPTHREADINFOBLOCK:
	.byte	0
	.ascii	"\021PPThreadInfoBlock"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PPTHREADINFOBLOCK
RTTI_DOSCALLS_PPTHREADINFOBLOCK:
	.byte	0
	.ascii	"\021PPThreadInfoBlock"

.data
	.balign 4
.globl	INIT_DOSCALLS_PSYSTHREADIB
INIT_DOSCALLS_PSYSTHREADIB:
	.byte	0
	.ascii	"\014PSysThreadIB"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PSYSTHREADIB
RTTI_DOSCALLS_PSYSTHREADIB:
	.byte	0
	.ascii	"\014PSysThreadIB"

.data
	.balign 4
.globl	INIT_DOSCALLS_PPROCESSINFOBLOCK
INIT_DOSCALLS_PPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\021PProcessInfoBlock"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PPROCESSINFOBLOCK
RTTI_DOSCALLS_PPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\021PProcessInfoBlock"

.data
	.balign 4
.globl	INIT_DOSCALLS_PPPROCESSINFOBLOCK
INIT_DOSCALLS_PPPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\022PPProcessInfoBlock"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PPPROCESSINFOBLOCK
RTTI_DOSCALLS_PPPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\022PPProcessInfoBlock"

.data
	.balign 4
.globl	INIT_DOSCALLS_TTHREADINFOBLOCK
INIT_DOSCALLS_TTHREADINFOBLOCK:
	.byte	13,16
	.ascii	"TThreadInfoBlock"
	.long	24,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TTHREADINFOBLOCK
RTTI_DOSCALLS_TTHREADINFOBLOCK:
	.byte	13,16
	.ascii	"TThreadInfoBlock"
	.long	24,6
	.long	RTTI_SYSTEM_POINTER
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_DOSCALLS_PSYSTHREADIB
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20

.data
	.balign 4
.globl	INIT_DOSCALLS_TSYSTHREADIB
INIT_DOSCALLS_TSYSTHREADIB:
	.byte	13,12
	.ascii	"TSysThreadIB"
	.long	16,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TSYSTHREADIB
RTTI_DOSCALLS_TSYSTHREADIB:
	.byte	13,12
	.ascii	"TSysThreadIB"
	.long	16,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14

.data
	.balign 4
.globl	INIT_DOSCALLS_TPROCESSINFOBLOCK
INIT_DOSCALLS_TPROCESSINFOBLOCK:
	.byte	13,17
	.ascii	"TProcessInfoBlock"
	.long	28,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TPROCESSINFOBLOCK
RTTI_DOSCALLS_TPROCESSINFOBLOCK:
	.byte	13,17
	.ascii	"TProcessInfoBlock"
	.long	28,7
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_DOSCALLS_PBYTEARRAY
	.long	12
	.long	RTTI_DOSCALLS_PBYTEARRAY
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24

.data
	.balign 4
.globl	INIT_DOSCALLS_PDBGBUF
INIT_DOSCALLS_PDBGBUF:
	.byte	0
	.ascii	"\007PDbgBuf"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PDBGBUF
RTTI_DOSCALLS_PDBGBUF:
	.byte	0
	.ascii	"\007PDbgBuf"

.data
	.balign 4
.globl	INIT_DOSCALLS_TDBGBUF
INIT_DOSCALLS_TDBGBUF:
	.byte	13,7
	.ascii	"TDbgBuf"
	.long	148,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TDBGBUF
RTTI_DOSCALLS_TDBGBUF:
	.byte	13,7
	.ascii	"TDbgBuf"
	.long	148,49
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_SYSTEM_POINTER
	.long	16
	.long	RTTI_SYSTEM_POINTER
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36
	.long	RTTI_SYSTEM_LONGWORD
	.long	40
	.long	RTTI_SYSTEM_LONGWORD
	.long	44
	.long	RTTI_SYSTEM_LONGWORD
	.long	48
	.long	RTTI_SYSTEM_LONGWORD
	.long	52
	.long	RTTI_SYSTEM_LONGWORD
	.long	56
	.long	RTTI_SYSTEM_LONGWORD
	.long	60
	.long	RTTI_SYSTEM_LONGWORD
	.long	64
	.long	RTTI_SYSTEM_LONGWORD
	.long	68
	.long	RTTI_SYSTEM_LONGWORD
	.long	72
	.long	RTTI_SYSTEM_LONGWORD
	.long	76
	.long	RTTI_SYSTEM_LONGWORD
	.long	80
	.long	RTTI_SYSTEM_BYTE
	.long	84
	.long	RTTI_SYSTEM_BYTE
	.long	85
	.long	RTTI_SYSTEM_WORD
	.long	86
	.long	RTTI_SYSTEM_LONGWORD
	.long	88
	.long	RTTI_SYSTEM_LONGWORD
	.long	92
	.long	RTTI_SYSTEM_BYTE
	.long	96
	.long	RTTI_SYSTEM_BYTE
	.long	97
	.long	RTTI_SYSTEM_WORD
	.long	98
	.long	RTTI_SYSTEM_LONGWORD
	.long	100
	.long	RTTI_SYSTEM_LONGWORD
	.long	104
	.long	RTTI_SYSTEM_BYTE
	.long	108
	.long	RTTI_SYSTEM_BYTE
	.long	109
	.long	RTTI_SYSTEM_WORD
	.long	110
	.long	RTTI_SYSTEM_LONGWORD
	.long	112
	.long	RTTI_SYSTEM_LONGWORD
	.long	116
	.long	RTTI_SYSTEM_BYTE
	.long	120
	.long	RTTI_SYSTEM_BYTE
	.long	121
	.long	RTTI_SYSTEM_WORD
	.long	122
	.long	RTTI_SYSTEM_LONGWORD
	.long	124
	.long	RTTI_SYSTEM_LONGWORD
	.long	128
	.long	RTTI_SYSTEM_BYTE
	.long	132
	.long	RTTI_SYSTEM_BYTE
	.long	133
	.long	RTTI_SYSTEM_WORD
	.long	134
	.long	RTTI_SYSTEM_LONGWORD
	.long	136
	.long	RTTI_SYSTEM_LONGWORD
	.long	140
	.long	RTTI_SYSTEM_BYTE
	.long	144
	.long	RTTI_SYSTEM_BYTE
	.long	145
	.long	RTTI_SYSTEM_WORD
	.long	146

.data
	.balign 4
.globl	INIT_DOSCALLS_TEXITPROC
INIT_DOSCALLS_TEXITPROC:
	.byte	23,9
	.ascii	"TExitProc"

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEXITPROC
RTTI_DOSCALLS_TEXITPROC:
	.byte	23,9
	.ascii	"TExitProc"

.data
	.balign 4
.globl	INIT_DOSCALLS_TRESULTCODES
INIT_DOSCALLS_TRESULTCODES:
	.byte	13,12
	.ascii	"TResultCodes"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TRESULTCODES
RTTI_DOSCALLS_TRESULTCODES:
	.byte	13,12
	.ascii	"TResultCodes"
	.long	8,4
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILELOCK
INIT_DOSCALLS_TFILELOCK:
	.byte	13,9
	.ascii	"TFileLock"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILELOCK
RTTI_DOSCALLS_TFILELOCK:
	.byte	13,9
	.ascii	"TFileLock"
	.long	8,4
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILELOCK
INIT_DOSCALLS_PFILELOCK:
	.byte	0
	.ascii	"\011PFileLock"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILELOCK
RTTI_DOSCALLS_PFILELOCK:
	.byte	0
	.ascii	"\011PFileLock"

.data
	.balign 4
.globl	INIT_DOSCALLS_TGEA
INIT_DOSCALLS_TGEA:
	.byte	13,4
	.ascii	"TgEA"
	.long	2,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF56
RTTI_DOSCALLS_DEF56:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TGEA
RTTI_DOSCALLS_TGEA:
	.byte	13,4
	.ascii	"TgEA"
	.long	2,4
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_DOSCALLS_DEF56
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_CHAR
	.long	1

.data
	.balign 4
.globl	INIT_DOSCALLS_PGEA
INIT_DOSCALLS_PGEA:
	.byte	0
	.ascii	"\004PgEA"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PGEA
RTTI_DOSCALLS_PGEA:
	.byte	0
	.ascii	"\004PgEA"

.data
	.balign 4
.globl	INIT_DOSCALLS_TGEALIST
INIT_DOSCALLS_TGEALIST:
	.byte	13,8
	.ascii	"TgEAList"
	.long	6,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF59
RTTI_DOSCALLS_DEF59:
	.byte	12
	.ascii	"\000"
	.long	2,1
	.long	RTTI_DOSCALLS_TGEA
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TGEALIST
RTTI_DOSCALLS_TGEALIST:
	.byte	13,8
	.ascii	"TgEAList"
	.long	6,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_DEF59
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PGEALIST
INIT_DOSCALLS_PGEALIST:
	.byte	0
	.ascii	"\010PgEAList"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PGEALIST
RTTI_DOSCALLS_PGEALIST:
	.byte	0
	.ascii	"\010PgEAList"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFEA
INIT_DOSCALLS_TFEA:
	.byte	13,4
	.ascii	"TfEA"
	.long	4,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFEA
RTTI_DOSCALLS_TFEA:
	.byte	13,4
	.ascii	"TfEA"
	.long	4,6
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_WORD
	.long	2

.data
	.balign 4
.globl	INIT_DOSCALLS_PFEA
INIT_DOSCALLS_PFEA:
	.byte	0
	.ascii	"\004PfEA"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFEA
RTTI_DOSCALLS_PFEA:
	.byte	0
	.ascii	"\004PfEA"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFEALIST
INIT_DOSCALLS_TFEALIST:
	.byte	13,8
	.ascii	"TfEAList"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF65
RTTI_DOSCALLS_DEF65:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	RTTI_DOSCALLS_TFEA
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFEALIST
RTTI_DOSCALLS_TFEALIST:
	.byte	13,8
	.ascii	"TfEAList"
	.long	8,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_DEF65
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PFEALIST
INIT_DOSCALLS_PFEALIST:
	.byte	0
	.ascii	"\010PfEAList"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFEALIST
RTTI_DOSCALLS_PFEALIST:
	.byte	0
	.ascii	"\010PfEAList"

.data
	.balign 4
.globl	INIT_DOSCALLS_TEAOP
INIT_DOSCALLS_TEAOP:
	.byte	13,5
	.ascii	"TEAOp"
	.long	12,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEAOP
RTTI_DOSCALLS_TEAOP:
	.byte	13,5
	.ascii	"TEAOp"
	.long	12,6
	.long	RTTI_DOSCALLS_PGEALIST
	.long	0
	.long	RTTI_DOSCALLS_PFEALIST
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_DOSCALLS_PGEALIST
	.long	0
	.long	RTTI_DOSCALLS_PFEALIST
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8

.data
	.balign 4
.globl	INIT_DOSCALLS_PEAOP
INIT_DOSCALLS_PEAOP:
	.byte	0
	.ascii	"\005PEAOp"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PEAOP
RTTI_DOSCALLS_PEAOP:
	.byte	0
	.ascii	"\005PEAOp"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFEA2
INIT_DOSCALLS_TFEA2:
	.byte	13,5
	.ascii	"TfEA2"
	.long	9,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF71
RTTI_DOSCALLS_DEF71:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFEA2
RTTI_DOSCALLS_TFEA2:
	.byte	13,5
	.ascii	"TfEA2"
	.long	9,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_DOSCALLS_DEF71
	.long	8

.data
	.balign 4
.globl	INIT_DOSCALLS_PFEA2
INIT_DOSCALLS_PFEA2:
	.byte	0
	.ascii	"\005PfEA2"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFEA2
RTTI_DOSCALLS_PFEA2:
	.byte	0
	.ascii	"\005PfEA2"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFEA2LIST
INIT_DOSCALLS_TFEA2LIST:
	.byte	13,9
	.ascii	"TfEA2List"
	.long	13,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF74
RTTI_DOSCALLS_DEF74:
	.byte	12
	.ascii	"\000"
	.long	9,1
	.long	RTTI_DOSCALLS_TFEA2
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFEA2LIST
RTTI_DOSCALLS_TFEA2LIST:
	.byte	13,9
	.ascii	"TfEA2List"
	.long	13,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_DEF74
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PFEA2LIST
INIT_DOSCALLS_PFEA2LIST:
	.byte	0
	.ascii	"\011PfEA2List"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFEA2LIST
RTTI_DOSCALLS_PFEA2LIST:
	.byte	0
	.ascii	"\011PfEA2List"

.data
	.balign 4
.globl	INIT_DOSCALLS_TGEA2
INIT_DOSCALLS_TGEA2:
	.byte	13,5
	.ascii	"TgEA2"
	.long	6,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF78
RTTI_DOSCALLS_DEF78:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF79
RTTI_DOSCALLS_DEF79:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOSCALLS_TGEA2
RTTI_DOSCALLS_TGEA2:
	.byte	13,5
	.ascii	"TgEA2"
	.long	6,6
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_DOSCALLS_DEF78
	.long	5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_DOSCALLS_DEF79
	.long	5

.data
	.balign 4
.globl	INIT_DOSCALLS_PGEA2
INIT_DOSCALLS_PGEA2:
	.byte	0
	.ascii	"\005PgEA2"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PGEA2
RTTI_DOSCALLS_PGEA2:
	.byte	0
	.ascii	"\005PgEA2"

.data
	.balign 4
.globl	INIT_DOSCALLS_TGEA2LIST
INIT_DOSCALLS_TGEA2LIST:
	.byte	13,9
	.ascii	"TgEA2list"
	.long	10,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF82
RTTI_DOSCALLS_DEF82:
	.byte	12
	.ascii	"\000"
	.long	6,1
	.long	RTTI_DOSCALLS_TGEA2
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TGEA2LIST
RTTI_DOSCALLS_TGEA2LIST:
	.byte	13,9
	.ascii	"TgEA2list"
	.long	10,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_DEF82
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PGEA2LIST
INIT_DOSCALLS_PGEA2LIST:
	.byte	0
	.ascii	"\011PgEA2List"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PGEA2LIST
RTTI_DOSCALLS_PGEA2LIST:
	.byte	0
	.ascii	"\011PgEA2List"

.data
	.balign 4
.globl	INIT_DOSCALLS_TEAOP2
INIT_DOSCALLS_TEAOP2:
	.byte	13,6
	.ascii	"TEAOp2"
	.long	12,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEAOP2
RTTI_DOSCALLS_TEAOP2:
	.byte	13,6
	.ascii	"TEAOp2"
	.long	12,6
	.long	RTTI_DOSCALLS_PGEA2LIST
	.long	0
	.long	RTTI_DOSCALLS_PFEA2LIST
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_DOSCALLS_PGEA2LIST
	.long	0
	.long	RTTI_DOSCALLS_PFEA2LIST
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8

.data
	.balign 4
.globl	INIT_DOSCALLS_PEAOP2
INIT_DOSCALLS_PEAOP2:
	.byte	0
	.ascii	"\006PEAOp2"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PEAOP2
RTTI_DOSCALLS_PEAOP2:
	.byte	0
	.ascii	"\006PEAOp2"

.data
	.balign 4
.globl	INIT_DOSCALLS_TEASIZEBUF
INIT_DOSCALLS_TEASIZEBUF:
	.byte	13,10
	.ascii	"TEASizeBuf"
	.long	6,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEASIZEBUF
RTTI_DOSCALLS_TEASIZEBUF:
	.byte	13,10
	.ascii	"TEASizeBuf"
	.long	6,4
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	2

.data
	.balign 4
.globl	INIT_DOSCALLS_PEASIZEBUF
INIT_DOSCALLS_PEASIZEBUF:
	.byte	0
	.ascii	"\012PEASizeBuf"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PEASIZEBUF
RTTI_DOSCALLS_PEASIZEBUF:
	.byte	0
	.ascii	"\012PEASizeBuf"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILESTATUS
INIT_DOSCALLS_TFILESTATUS:
	.byte	16,11
	.ascii	"TFileStatus"
	.long	0,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILESTATUS
RTTI_DOSCALLS_TFILESTATUS:
	.byte	16,11
	.ascii	"TFileStatus"
	.long	0,0

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILESTATUS
INIT_DOSCALLS_PFILESTATUS:
	.byte	0
	.ascii	"\013PFileStatus"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILESTATUS
RTTI_DOSCALLS_PFILESTATUS:
	.byte	0
	.ascii	"\013PFileStatus"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILESTATUS3
INIT_DOSCALLS_TFILESTATUS3:
	.byte	16,12
	.ascii	"TFileStatus3"
	.long	24,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILESTATUS3
RTTI_DOSCALLS_TFILESTATUS3:
	.byte	16,12
	.ascii	"TFileStatus3"
	.long	24,10
	.long	RTTI_DOSCALLS_TFILESTATUS
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILESTATUS3
INIT_DOSCALLS_PFILESTATUS3:
	.byte	0
	.ascii	"\014PFileStatus3"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILESTATUS3
RTTI_DOSCALLS_PFILESTATUS3:
	.byte	0
	.ascii	"\014PFileStatus3"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILESTATUS4
INIT_DOSCALLS_TFILESTATUS4:
	.byte	16,12
	.ascii	"TFileStatus4"
	.long	28,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILESTATUS4
RTTI_DOSCALLS_TFILESTATUS4:
	.byte	16,12
	.ascii	"TFileStatus4"
	.long	28,2
	.long	RTTI_DOSCALLS_TFILESTATUS3
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	24

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILESTATUS4
INIT_DOSCALLS_PFILESTATUS4:
	.byte	0
	.ascii	"\014PFileStatus4"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILESTATUS4
RTTI_DOSCALLS_PFILESTATUS4:
	.byte	0
	.ascii	"\014PFileStatus4"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILESTATUS3L
INIT_DOSCALLS_TFILESTATUS3L:
	.byte	16,13
	.ascii	"TFileStatus3L"
	.long	32,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILESTATUS3L
RTTI_DOSCALLS_TFILESTATUS3L:
	.byte	16,13
	.ascii	"TFileStatus3L"
	.long	32,10
	.long	RTTI_DOSCALLS_TFILESTATUS
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_INT64
	.long	12
	.long	RTTI_SYSTEM_INT64
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	28

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILESTATUS3L
INIT_DOSCALLS_PFILESTATUS3L:
	.byte	0
	.ascii	"\015PFileStatus3L"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILESTATUS3L
RTTI_DOSCALLS_PFILESTATUS3L:
	.byte	0
	.ascii	"\015PFileStatus3L"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILESTATUS4L
INIT_DOSCALLS_TFILESTATUS4L:
	.byte	16,13
	.ascii	"TFileStatus4L"
	.long	36,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILESTATUS4L
RTTI_DOSCALLS_TFILESTATUS4L:
	.byte	16,13
	.ascii	"TFileStatus4L"
	.long	36,2
	.long	RTTI_DOSCALLS_TFILESTATUS3L
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	32

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILESTATUS4L
INIT_DOSCALLS_PFILESTATUS4L:
	.byte	0
	.ascii	"\015PFileStatus4L"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILESTATUS4L
RTTI_DOSCALLS_PFILESTATUS4L:
	.byte	0
	.ascii	"\015PFileStatus4L"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILEFINDBUF3
INIT_DOSCALLS_TFILEFINDBUF3:
	.byte	16,13
	.ascii	"TFileFindBuf3"
	.long	284,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILEFINDBUF3
RTTI_DOSCALLS_TFILEFINDBUF3:
	.byte	16,13
	.ascii	"TFileFindBuf3"
	.long	284,12
	.long	RTTI_DOSCALLS_TFILESTATUS
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	28

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILEFINDBUF3
INIT_DOSCALLS_PFILEFINDBUF3:
	.byte	0
	.ascii	"\015PFileFindBuf3"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILEFINDBUF3
RTTI_DOSCALLS_PFILEFINDBUF3:
	.byte	0
	.ascii	"\015PFileFindBuf3"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILEFINDBUF4
INIT_DOSCALLS_TFILEFINDBUF4:
	.byte	16,13
	.ascii	"TFileFindBuf4"
	.long	288,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILEFINDBUF4
RTTI_DOSCALLS_TFILEFINDBUF4:
	.byte	16,13
	.ascii	"TFileFindBuf4"
	.long	288,13
	.long	RTTI_DOSCALLS_TFILESTATUS
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	32

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILEFINDBUF4
INIT_DOSCALLS_PFILEFINDBUF4:
	.byte	0
	.ascii	"\015PFileFindBuf4"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILEFINDBUF4
RTTI_DOSCALLS_PFILEFINDBUF4:
	.byte	0
	.ascii	"\015PFileFindBuf4"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILEFINDBUF3L
INIT_DOSCALLS_TFILEFINDBUF3L:
	.byte	16,14
	.ascii	"TFileFindBuf3L"
	.long	292,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILEFINDBUF3L
RTTI_DOSCALLS_TFILEFINDBUF3L:
	.byte	16,14
	.ascii	"TFileFindBuf3L"
	.long	292,12
	.long	RTTI_DOSCALLS_TFILESTATUS
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_INT64
	.long	16
	.long	RTTI_SYSTEM_INT64
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	36

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILEFINDBUF3L
INIT_DOSCALLS_PFILEFINDBUF3L:
	.byte	0
	.ascii	"\016PFileFindBuf3L"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILEFINDBUF3L
RTTI_DOSCALLS_PFILEFINDBUF3L:
	.byte	0
	.ascii	"\016PFileFindBuf3L"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFILEFINDBUF4L
INIT_DOSCALLS_TFILEFINDBUF4L:
	.byte	16,14
	.ascii	"TFileFindBuf4L"
	.long	296,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFILEFINDBUF4L
RTTI_DOSCALLS_TFILEFINDBUF4L:
	.byte	16,14
	.ascii	"TFileFindBuf4L"
	.long	296,13
	.long	RTTI_DOSCALLS_TFILESTATUS
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_INT64
	.long	16
	.long	RTTI_SYSTEM_INT64
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	40

.data
	.balign 4
.globl	INIT_DOSCALLS_PFILEFINDBUF4L
INIT_DOSCALLS_PFILEFINDBUF4L:
	.byte	0
	.ascii	"\016PFileFindBuf4L"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFILEFINDBUF4L
RTTI_DOSCALLS_PFILEFINDBUF4L:
	.byte	0
	.ascii	"\016PFileFindBuf4L"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFSINFO
INIT_DOSCALLS_TFSINFO:
	.byte	13,7
	.ascii	"TFSInfo"
	.long	260,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFSINFO
RTTI_DOSCALLS_TFSINFO:
	.byte	13,7
	.ascii	"TFSInfo"
	.long	260,8
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PFSINFO
INIT_DOSCALLS_PFSINFO:
	.byte	0
	.ascii	"\007PFSInfo"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFSINFO
RTTI_DOSCALLS_PFSINFO:
	.byte	0
	.ascii	"\007PFSInfo"

.data
	.balign 4
.globl	INIT_DOSCALLS_TATTACHDATA
INIT_DOSCALLS_TATTACHDATA:
	.byte	13,11
	.ascii	"TAttachData"
	.long	65523,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TATTACHDATA
RTTI_DOSCALLS_TATTACHDATA:
	.byte	13,11
	.ascii	"TAttachData"
	.long	65523,4
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_DOSCALLS_TCHARARRAY
	.long	2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PATTACHDATA
INIT_DOSCALLS_PATTACHDATA:
	.byte	0
	.ascii	"\013PAttachData"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PATTACHDATA
RTTI_DOSCALLS_PATTACHDATA:
	.byte	0
	.ascii	"\013PAttachData"

.data
	.balign 4
.globl	INIT_DOSCALLS_TFSQBUFFER2
INIT_DOSCALLS_TFSQBUFFER2:
	.byte	13,11
	.ascii	"TFSQBuffer2"
	.long	14,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFSQBUFFER2
RTTI_DOSCALLS_TFSQBUFFER2:
	.byte	13,11
	.ascii	"TFSQBuffer2"
	.long	14,10
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_CHAR
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	9
	.long	RTTI_SYSTEM_CHAR
	.long	10
	.long	RTTI_SYSTEM_BYTE
	.long	11
	.long	RTTI_SYSTEM_CHAR
	.long	12
	.long	RTTI_SYSTEM_BYTE
	.long	13

.data
	.balign 4
.globl	INIT_DOSCALLS_PFSQBUFFER2
INIT_DOSCALLS_PFSQBUFFER2:
	.byte	0
	.ascii	"\013PFSQBuffer2"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PFSQBUFFER2
RTTI_DOSCALLS_PFSQBUFFER2:
	.byte	0
	.ascii	"\013PFSQBuffer2"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSVVALUES
INIT_DOSCALLS_TQSVVALUES:
	.byte	12
	.ascii	"\012TQSVValues"
	.long	4,30
	.long	INIT_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSVVALUES
RTTI_DOSCALLS_TQSVVALUES:
	.byte	12
	.ascii	"\012TQSVValues"
	.long	4,30
	.long	RTTI_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSVVALUES
INIT_DOSCALLS_PQSVVALUES:
	.byte	0
	.ascii	"\012PQSVValues"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSVVALUES
RTTI_DOSCALLS_PQSVVALUES:
	.byte	0
	.ascii	"\012PQSVValues"

.data
	.balign 4
.globl	INIT_DOSCALLS_PSEMRECORD
INIT_DOSCALLS_PSEMRECORD:
	.byte	0
	.ascii	"\012PSemRecord"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PSEMRECORD
RTTI_DOSCALLS_PSEMRECORD:
	.byte	0
	.ascii	"\012PSemRecord"

.data
	.balign 4
.globl	INIT_DOSCALLS_TSEMRECORD
INIT_DOSCALLS_TSEMRECORD:
	.byte	13,10
	.ascii	"TSemRecord"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TSEMRECORD
RTTI_DOSCALLS_TSEMRECORD:
	.byte	13,10
	.ascii	"TSemRecord"
	.long	8,2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PSEMARRAY
INIT_DOSCALLS_PSEMARRAY:
	.byte	0
	.ascii	"\011PSemArray"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PSEMARRAY
RTTI_DOSCALLS_PSEMARRAY:
	.byte	0
	.ascii	"\011PSemArray"

.data
	.balign 4
.globl	INIT_DOSCALLS_TSEMARRAY
INIT_DOSCALLS_TSEMARRAY:
	.byte	12
	.ascii	"\011TSemArray"
	.long	8,65536
	.long	INIT_DOSCALLS_TSEMRECORD
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TSEMARRAY
RTTI_DOSCALLS_TSEMARRAY:
	.byte	12
	.ascii	"\011TSemArray"
	.long	8,65536
	.long	RTTI_DOSCALLS_TSEMRECORD
	.long	-1

.data
	.balign 4
.globl	INIT_DOSCALLS_TDATETIME
INIT_DOSCALLS_TDATETIME:
	.byte	13,9
	.ascii	"TDateTime"
	.long	11,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TDATETIME
RTTI_DOSCALLS_TDATETIME:
	.byte	13,9
	.ascii	"TDateTime"
	.long	11,18
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	3
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_SMALLINT
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	10
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	3
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_SMALLINT
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	10

.data
	.balign 4
.globl	INIT_DOSCALLS_PDATETIME
INIT_DOSCALLS_PDATETIME:
	.byte	0
	.ascii	"\011PDateTime"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PDATETIME
RTTI_DOSCALLS_PDATETIME:
	.byte	0
	.ascii	"\011PDateTime"

.data
	.balign 4
.globl	INIT_DOSCALLS_TCOUNTRYCODE
INIT_DOSCALLS_TCOUNTRYCODE:
	.byte	13,12
	.ascii	"TCountryCode"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TCOUNTRYCODE
RTTI_DOSCALLS_TCOUNTRYCODE:
	.byte	13,12
	.ascii	"TCountryCode"
	.long	8,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PCOUNTRYCODE
INIT_DOSCALLS_PCOUNTRYCODE:
	.byte	0
	.ascii	"\014PCountryCode"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PCOUNTRYCODE
RTTI_DOSCALLS_PCOUNTRYCODE:
	.byte	0
	.ascii	"\014PCountryCode"

.data
	.balign 4
.globl	INIT_DOSCALLS_TTIMEFMT
INIT_DOSCALLS_TTIMEFMT:
	.byte	3,8
	.ascii	"TTimeFmt"
	.byte	5
	.long	0,1,0
	.byte	7
	.ascii	"Clock12"
	.byte	7
	.ascii	"Clock24"
	.byte	8
	.ascii	"DosCalls"
	.byte	0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TTIMEFMT
RTTI_DOSCALLS_TTIMEFMT:
	.byte	3,8
	.ascii	"TTimeFmt"
	.byte	5
	.long	0,1,0
	.byte	7
	.ascii	"Clock12"
	.byte	7
	.ascii	"Clock24"
	.byte	8
	.ascii	"DosCalls"
	.byte	0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TTIMEFMT_s2o
RTTI_DOSCALLS_TTIMEFMT_s2o:
	.long	2,0
	.long	RTTI_DOSCALLS_TTIMEFMT+23
	.long	1
	.long	RTTI_DOSCALLS_TTIMEFMT+31

.data
	.balign 4
.globl	RTTI_DOSCALLS_TTIMEFMT_o2s
RTTI_DOSCALLS_TTIMEFMT_o2s:
	.long	0
	.long	RTTI_DOSCALLS_TTIMEFMT+23
	.long	RTTI_DOSCALLS_TTIMEFMT+31

.data
	.balign 4
.globl	INIT_DOSCALLS_TCOUNTRYINFO
INIT_DOSCALLS_TCOUNTRYINFO:
	.byte	13,12
	.ascii	"TCountryInfo"
	.long	47,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF324
RTTI_DOSCALLS_DEF324:
	.byte	12
	.ascii	"\000"
	.long	1,5
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF325
RTTI_DOSCALLS_DEF325:
	.byte	12
	.ascii	"\000"
	.long	2,2
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF326
RTTI_DOSCALLS_DEF326:
	.byte	12
	.ascii	"\000"
	.long	2,5
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF327
RTTI_DOSCALLS_DEF327:
	.byte	12
	.ascii	"\000"
	.long	1,5
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF328
RTTI_DOSCALLS_DEF328:
	.byte	12
	.ascii	"\000"
	.long	1,2
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF329
RTTI_DOSCALLS_DEF329:
	.byte	12
	.ascii	"\000"
	.long	1,2
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF330
RTTI_DOSCALLS_DEF330:
	.byte	12
	.ascii	"\000"
	.long	1,2
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF331
RTTI_DOSCALLS_DEF331:
	.byte	12
	.ascii	"\000"
	.long	1,2
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF332
RTTI_DOSCALLS_DEF332:
	.byte	12
	.ascii	"\000"
	.long	2,2
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF333
RTTI_DOSCALLS_DEF333:
	.byte	12
	.ascii	"\000"
	.long	1,2
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF334
RTTI_DOSCALLS_DEF334:
	.byte	12
	.ascii	"\000"
	.long	2,5
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_DOSCALLS_TCOUNTRYINFO
RTTI_DOSCALLS_TCOUNTRYINFO:
	.byte	13,12
	.ascii	"TCountryInfo"
	.long	47,31
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_DOSCALLS_DEF324
	.long	12
	.long	RTTI_SYSTEM_CHAR
	.long	17
	.long	RTTI_SYSTEM_BYTE
	.long	18
	.long	RTTI_SYSTEM_CHAR
	.long	19
	.long	RTTI_SYSTEM_BYTE
	.long	20
	.long	RTTI_SYSTEM_CHAR
	.long	21
	.long	RTTI_SYSTEM_BYTE
	.long	22
	.long	RTTI_SYSTEM_CHAR
	.long	23
	.long	RTTI_SYSTEM_BYTE
	.long	24
	.long	RTTI_SYSTEM_BYTE
	.long	25
	.long	RTTI_SYSTEM_BYTE
	.long	26
	.long	RTTI_DOSCALLS_TTIMEFMT
	.long	27
	.long	RTTI_DOSCALLS_DEF325
	.long	31
	.long	RTTI_SYSTEM_CHAR
	.long	35
	.long	RTTI_SYSTEM_BYTE
	.long	36
	.long	RTTI_DOSCALLS_DEF326
	.long	37
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_DOSCALLS_DEF327
	.long	12
	.long	RTTI_DOSCALLS_DEF328
	.long	17
	.long	RTTI_DOSCALLS_DEF329
	.long	19
	.long	RTTI_DOSCALLS_DEF330
	.long	21
	.long	RTTI_DOSCALLS_DEF331
	.long	23
	.long	RTTI_SYSTEM_BYTE
	.long	25
	.long	RTTI_SYSTEM_BYTE
	.long	26
	.long	RTTI_SYSTEM_BYTE
	.long	27
	.long	RTTI_DOSCALLS_DEF332
	.long	28
	.long	RTTI_DOSCALLS_DEF333
	.long	32
	.long	RTTI_DOSCALLS_DEF334
	.long	34

.data
	.balign 4
.globl	INIT_DOSCALLS_PCOUNTRYINFO
INIT_DOSCALLS_PCOUNTRYINFO:
	.byte	0
	.ascii	"\014PCountryInfo"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PCOUNTRYINFO
RTTI_DOSCALLS_PCOUNTRYINFO:
	.byte	0
	.ascii	"\014PCountryInfo"

.data
	.balign 4
.globl	INIT_DOSCALLS_TDBCSRANGE
INIT_DOSCALLS_TDBCSRANGE:
	.byte	13,10
	.ascii	"TDBCSRange"
	.long	2,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TDBCSRANGE
RTTI_DOSCALLS_TDBCSRANGE:
	.byte	13,10
	.ascii	"TDBCSRange"
	.long	2,2
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1

.data
	.balign 4
.globl	INIT_DOSCALLS_TDBCSARRAY
INIT_DOSCALLS_TDBCSARRAY:
	.byte	12
	.ascii	"\012TDBCSArray"
	.long	2,65536
	.long	INIT_DOSCALLS_TDBCSRANGE
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TDBCSARRAY
RTTI_DOSCALLS_TDBCSARRAY:
	.byte	12
	.ascii	"\012TDBCSArray"
	.long	2,65536
	.long	RTTI_DOSCALLS_TDBCSRANGE
	.long	-1

.data
	.balign 4
.globl	INIT_DOSCALLS_PDBCSARRAY
INIT_DOSCALLS_PDBCSARRAY:
	.byte	0
	.ascii	"\012PDBCSArray"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PDBCSARRAY
RTTI_DOSCALLS_PDBCSARRAY:
	.byte	0
	.ascii	"\012PDBCSArray"

.data
	.balign 4
.globl	INIT_DOSCALLS_PEXCEPTIONREGISTRATIONRECORD
INIT_DOSCALLS_PEXCEPTIONREGISTRATIONRECORD:
	.byte	0
	.ascii	"\034PExceptionRegistrationRecord"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PEXCEPTIONREGISTRATIONRECORD
RTTI_DOSCALLS_PEXCEPTIONREGISTRATIONRECORD:
	.byte	0
	.ascii	"\034PExceptionRegistrationRecord"

.data
	.balign 4
.globl	INIT_DOSCALLS_PEXCEPTIONREPORTRECORD
INIT_DOSCALLS_PEXCEPTIONREPORTRECORD:
	.byte	0
	.ascii	"\026PExceptionReportRecord"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PEXCEPTIONREPORTRECORD
RTTI_DOSCALLS_PEXCEPTIONREPORTRECORD:
	.byte	0
	.ascii	"\026PExceptionReportRecord"

.data
	.balign 4
.globl	INIT_DOSCALLS_PCONTEXTRECORD
INIT_DOSCALLS_PCONTEXTRECORD:
	.byte	0
	.ascii	"\016PContextRecord"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PCONTEXTRECORD
RTTI_DOSCALLS_PCONTEXTRECORD:
	.byte	0
	.ascii	"\016PContextRecord"

.data
	.balign 4
.globl	INIT_DOSCALLS_TEXCEPTIONHANDLER
INIT_DOSCALLS_TEXCEPTIONHANDLER:
	.byte	23,17
	.ascii	"TExceptionHandler"

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEXCEPTIONHANDLER
RTTI_DOSCALLS_TEXCEPTIONHANDLER:
	.byte	23,17
	.ascii	"TExceptionHandler"

.data
	.balign 4
.globl	INIT_DOSCALLS_TEXCEPTIONREGISTRATIONRECORD
INIT_DOSCALLS_TEXCEPTIONREGISTRATIONRECORD:
	.byte	13,28
	.ascii	"TExceptionRegistrationRecord"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEXCEPTIONREGISTRATIONRECORD
RTTI_DOSCALLS_TEXCEPTIONREGISTRATIONRECORD:
	.byte	13,28
	.ascii	"TExceptionRegistrationRecord"
	.long	8,2
	.long	RTTI_DOSCALLS_PEXCEPTIONREGISTRATIONRECORD
	.long	0
	.long	RTTI_DOSCALLS_TEXCEPTIONHANDLER
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_TEXCEPTIONREPORTRECORD
INIT_DOSCALLS_TEXCEPTIONREPORTRECORD:
	.byte	13,22
	.ascii	"TExceptionReportRecord"
	.long	40,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF355
RTTI_DOSCALLS_DEF355:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	RTTI_DOSCALLS_TEXCEPTIONREPORTRECORD
RTTI_DOSCALLS_TEXCEPTIONREPORTRECORD:
	.byte	13,22
	.ascii	"TExceptionReportRecord"
	.long	40,6
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_DOSCALLS_PEXCEPTIONREPORTRECORD
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_DOSCALLS_DEF355
	.long	20

.data
	.balign 4
.globl	INIT_DOSCALLS_TCONTEXTRECORD
INIT_DOSCALLS_TCONTEXTRECORD:
	.byte	13,14
	.ascii	"TContextRecord"
	.long	176,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF357
RTTI_DOSCALLS_DEF357:
	.byte	12
	.ascii	"\000"
	.long	4,7
	.long	RTTI_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF358
RTTI_DOSCALLS_DEF358:
	.byte	12
	.ascii	"\000"
	.long	10,8
	.long	RTTI_SYSTEM_EXTENDED
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TCONTEXTRECORD
RTTI_DOSCALLS_TCONTEXTRECORD:
	.byte	13,14
	.ascii	"TContextRecord"
	.long	176,19
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_DEF357
	.long	4
	.long	RTTI_DOSCALLS_DEF358
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	112
	.long	RTTI_SYSTEM_LONGWORD
	.long	116
	.long	RTTI_SYSTEM_LONGWORD
	.long	120
	.long	RTTI_SYSTEM_LONGWORD
	.long	124
	.long	RTTI_SYSTEM_LONGWORD
	.long	128
	.long	RTTI_SYSTEM_LONGWORD
	.long	132
	.long	RTTI_SYSTEM_LONGWORD
	.long	136
	.long	RTTI_SYSTEM_LONGWORD
	.long	140
	.long	RTTI_SYSTEM_LONGWORD
	.long	144
	.long	RTTI_SYSTEM_LONGWORD
	.long	148
	.long	RTTI_SYSTEM_LONGWORD
	.long	152
	.long	RTTI_SYSTEM_LONGWORD
	.long	156
	.long	RTTI_SYSTEM_LONGWORD
	.long	160
	.long	RTTI_SYSTEM_LONGWORD
	.long	164
	.long	RTTI_SYSTEM_LONGWORD
	.long	168
	.long	RTTI_SYSTEM_LONGWORD
	.long	172

.data
	.balign 4
.globl	INIT_DOSCALLS_TREQUESTDATA
INIT_DOSCALLS_TREQUESTDATA:
	.byte	13,12
	.ascii	"TRequestData"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TREQUESTDATA
RTTI_DOSCALLS_TREQUESTDATA:
	.byte	13,12
	.ascii	"TRequestData"
	.long	8,4
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PREQUESTDATA
INIT_DOSCALLS_PREQUESTDATA:
	.byte	0
	.ascii	"\014PRequestData"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PREQUESTDATA
RTTI_DOSCALLS_PREQUESTDATA:
	.byte	0
	.ascii	"\014PRequestData"

.data
	.balign 4
.globl	INIT_DOSCALLS_PINSERTTABLE
INIT_DOSCALLS_PINSERTTABLE:
	.byte	0
	.ascii	"\014PInsertTable"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PINSERTTABLE
RTTI_DOSCALLS_PINSERTTABLE:
	.byte	0
	.ascii	"\014PInsertTable"

.data
	.balign 4
.globl	INIT_DOSCALLS_TINSERTTABLE
INIT_DOSCALLS_TINSERTTABLE:
	.byte	12
	.ascii	"\014TInsertTable"
	.long	4,9
	.long	INIT_SYSTEM_PCHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TINSERTTABLE
RTTI_DOSCALLS_TINSERTTABLE:
	.byte	12
	.ascii	"\014TInsertTable"
	.long	4,9
	.long	RTTI_SYSTEM_PCHAR
	.long	-1

.data
	.balign 4
.globl	INIT_DOSCALLS_TSTATUSDATA
INIT_DOSCALLS_TSTATUSDATA:
	.byte	13,11
	.ascii	"TStatusData"
	.long	6,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TSTATUSDATA
RTTI_DOSCALLS_TSTATUSDATA:
	.byte	13,11
	.ascii	"TStatusData"
	.long	6,3
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PSTATUSDATA
INIT_DOSCALLS_PSTATUSDATA:
	.byte	0
	.ascii	"\013PStatusData"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PSTATUSDATA
RTTI_DOSCALLS_PSTATUSDATA:
	.byte	0
	.ascii	"\013PStatusData"

.data
	.balign 4
.globl	INIT_DOSCALLS_TCHILDINFO
INIT_DOSCALLS_TCHILDINFO:
	.byte	13,10
	.ascii	"TChildInfo"
	.long	4,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TCHILDINFO
RTTI_DOSCALLS_TCHILDINFO:
	.byte	13,10
	.ascii	"TChildInfo"
	.long	4,4
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2

.data
	.balign 4
.globl	INIT_DOSCALLS_PCHILDINFO
INIT_DOSCALLS_PCHILDINFO:
	.byte	0
	.ascii	"\012PChildInfo"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PCHILDINFO
RTTI_DOSCALLS_PCHILDINFO:
	.byte	0
	.ascii	"\012PChildInfo"

.data
	.balign 4
.globl	INIT_DOSCALLS_TSTARTDATA
INIT_DOSCALLS_TSTARTDATA:
	.byte	13,10
	.ascii	"TStartData"
	.long	60,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TSTARTDATA
RTTI_DOSCALLS_TSTARTDATA:
	.byte	13,10
	.ascii	"TStartData"
	.long	60,21
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_PCHAR
	.long	8
	.long	RTTI_SYSTEM_PCHAR
	.long	12
	.long	RTTI_SYSTEM_PCHAR
	.long	16
	.long	RTTI_SYSTEM_PCHAR
	.long	20
	.long	RTTI_SYSTEM_PCHAR
	.long	24
	.long	RTTI_SYSTEM_WORD
	.long	28
	.long	RTTI_SYSTEM_WORD
	.long	30
	.long	RTTI_SYSTEM_PCHAR
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36
	.long	RTTI_SYSTEM_WORD
	.long	40
	.long	RTTI_SYSTEM_WORD
	.long	42
	.long	RTTI_SYSTEM_WORD
	.long	44
	.long	RTTI_SYSTEM_WORD
	.long	46
	.long	RTTI_SYSTEM_WORD
	.long	48
	.long	RTTI_SYSTEM_WORD
	.long	50
	.long	RTTI_SYSTEM_PCHAR
	.long	52
	.long	RTTI_SYSTEM_LONGWORD
	.long	56

.data
	.balign 4
.globl	INIT_DOSCALLS_PSTARTDATA
INIT_DOSCALLS_PSTARTDATA:
	.byte	0
	.ascii	"\012PStartData"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PSTARTDATA
RTTI_DOSCALLS_PSTARTDATA:
	.byte	0
	.ascii	"\012PStartData"

.data
	.balign 4
.globl	INIT_DOSCALLS_TAVAILDATA
INIT_DOSCALLS_TAVAILDATA:
	.byte	13,10
	.ascii	"TAvailData"
	.long	4,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TAVAILDATA
RTTI_DOSCALLS_TAVAILDATA:
	.byte	13,10
	.ascii	"TAvailData"
	.long	4,2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2

.data
	.balign 4
.globl	INIT_DOSCALLS_TPIPEINFO
INIT_DOSCALLS_TPIPEINFO:
	.byte	13,9
	.ascii	"TPipeInfo"
	.long	262,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TPIPEINFO
RTTI_DOSCALLS_TPIPEINFO:
	.byte	13,9
	.ascii	"TPipeInfo"
	.long	262,5
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	6

.data
	.balign 4
.globl	INIT_DOSCALLS_TPIPESEMSTATE
INIT_DOSCALLS_TPIPESEMSTATE:
	.byte	13,13
	.ascii	"TPipeSemState"
	.long	6,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TPIPESEMSTATE
RTTI_DOSCALLS_TPIPESEMSTATE:
	.byte	13,13
	.ascii	"TPipeSemState"
	.long	6,8
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PPIPESEMSTATE
INIT_DOSCALLS_PPIPESEMSTATE:
	.byte	0
	.ascii	"\015PPipeSemState"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PPIPESEMSTATE
RTTI_DOSCALLS_PPIPESEMSTATE:
	.byte	0
	.ascii	"\015PPipeSemState"

.data
	.balign 4
.globl	INIT_DOSCALLS_TPIPESEMSTATES
INIT_DOSCALLS_TPIPESEMSTATES:
	.byte	12
	.ascii	"\016TPipeSemStates"
	.long	6,65536
	.long	INIT_DOSCALLS_TPIPESEMSTATE
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TPIPESEMSTATES
RTTI_DOSCALLS_TPIPESEMSTATES:
	.byte	12
	.ascii	"\016TPipeSemStates"
	.long	6,65536
	.long	RTTI_DOSCALLS_TPIPESEMSTATE
	.long	-1

.data
	.balign 4
.globl	INIT_DOSCALLS_TFARPTR
INIT_DOSCALLS_TFARPTR:
	.byte	13,7
	.ascii	"TFarPtr"
	.long	4,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TFARPTR
RTTI_DOSCALLS_TFARPTR:
	.byte	13,7
	.ascii	"TFarPtr"
	.long	4,2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2

.data
	.balign 4
.globl	INIT_DOSCALLS_TLOGRECORD
INIT_DOSCALLS_TLOGRECORD:
	.byte	13,10
	.ascii	"TLogRecord"
	.long	3952,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF460
RTTI_DOSCALLS_DEF460:
	.byte	12
	.ascii	"\000"
	.long	1,4
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF462
RTTI_DOSCALLS_DEF462:
	.byte	12
	.ascii	"\000"
	.long	1,3400
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF463
RTTI_DOSCALLS_DEF463:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF464
RTTI_DOSCALLS_DEF464:
	.byte	12
	.ascii	"\000"
	.long	1,260
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF465
RTTI_DOSCALLS_DEF465:
	.byte	12
	.ascii	"\000"
	.long	1,12
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF466
RTTI_DOSCALLS_DEF466:
	.byte	12
	.ascii	"\000"
	.long	1,3400
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF467
RTTI_DOSCALLS_DEF467:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF468
RTTI_DOSCALLS_DEF468:
	.byte	12
	.ascii	"\000"
	.long	1,12
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF469
RTTI_DOSCALLS_DEF469:
	.byte	12
	.ascii	"\000"
	.long	1,3400
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF470
RTTI_DOSCALLS_DEF470:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF471
RTTI_DOSCALLS_DEF471:
	.byte	12
	.ascii	"\000"
	.long	1,260
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF472
RTTI_DOSCALLS_DEF472:
	.byte	12
	.ascii	"\000"
	.long	1,12
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF473
RTTI_DOSCALLS_DEF473:
	.byte	12
	.ascii	"\000"
	.long	1,3400
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF474
RTTI_DOSCALLS_DEF474:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF475
RTTI_DOSCALLS_DEF475:
	.byte	12
	.ascii	"\000"
	.long	1,12
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF476
RTTI_DOSCALLS_DEF476:
	.byte	12
	.ascii	"\000"
	.long	1,3400
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TLOGRECORD
RTTI_DOSCALLS_TLOGRECORD:
	.byte	13,10
	.ascii	"TLogRecord"
	.long	3952,22
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_DOSCALLS_DEF460
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_DOSCALLS_DEF462
	.long	24
	.long	RTTI_DOSCALLS_DEF463
	.long	24
	.long	RTTI_DOSCALLS_DEF464
	.long	280
	.long	RTTI_DOSCALLS_DEF465
	.long	540
	.long	RTTI_DOSCALLS_DEF466
	.long	552
	.long	RTTI_DOSCALLS_DEF467
	.long	24
	.long	RTTI_DOSCALLS_DEF468
	.long	280
	.long	RTTI_DOSCALLS_DEF469
	.long	292
	.long	RTTI_DOSCALLS_DEF470
	.long	24
	.long	RTTI_DOSCALLS_DEF471
	.long	32
	.long	RTTI_DOSCALLS_DEF472
	.long	292
	.long	RTTI_DOSCALLS_DEF473
	.long	304
	.long	RTTI_DOSCALLS_DEF474
	.long	24
	.long	RTTI_DOSCALLS_DEF475
	.long	32
	.long	RTTI_DOSCALLS_DEF476
	.long	44

.data
	.balign 4
.globl	INIT_DOSCALLS_PLOGRECORD
INIT_DOSCALLS_PLOGRECORD:
	.byte	0
	.ascii	"\012PLogRecord"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PLOGRECORD
RTTI_DOSCALLS_PLOGRECORD:
	.byte	0
	.ascii	"\012PLogRecord"

.data
	.balign 4
.globl	INIT_DOSCALLS_TLOGENTRYREC
INIT_DOSCALLS_TLOGENTRYREC:
	.byte	13,12
	.ascii	"TLogEntryRec"
	.long	3956,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF479
RTTI_DOSCALLS_DEF479:
	.byte	12
	.ascii	"\000"
	.long	3952,1
	.long	RTTI_DOSCALLS_TLOGRECORD
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TLOGENTRYREC
RTTI_DOSCALLS_TLOGENTRYREC:
	.byte	13,12
	.ascii	"TLogEntryRec"
	.long	3956,3
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_DOSCALLS_DEF479
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PLOGENTRYREC
INIT_DOSCALLS_PLOGENTRYREC:
	.byte	0
	.ascii	"\014PLogEntryRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PLOGENTRYREC
RTTI_DOSCALLS_PLOGENTRYREC:
	.byte	0
	.ascii	"\014PLogEntryRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSGREC
INIT_DOSCALLS_PQSGREC:
	.byte	0
	.ascii	"\007PQSGRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSGREC
RTTI_DOSCALLS_PQSGREC:
	.byte	0
	.ascii	"\007PQSGRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSGREC
INIT_DOSCALLS_TQSGREC:
	.byte	13,7
	.ascii	"TQSGRec"
	.long	12,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSGREC
RTTI_DOSCALLS_TQSGREC:
	.byte	13,7
	.ascii	"TQSGRec"
	.long	12,3
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSTREC
INIT_DOSCALLS_PQSTREC:
	.byte	0
	.ascii	"\007PQSTRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSTREC
RTTI_DOSCALLS_PQSTREC:
	.byte	0
	.ascii	"\007PQSTRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSTREC
INIT_DOSCALLS_TQSTREC:
	.byte	13,7
	.ascii	"TQSTRec"
	.long	28,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF491
RTTI_DOSCALLS_DEF491:
	.byte	12
	.ascii	"\000"
	.long	1,3
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF492
RTTI_DOSCALLS_DEF492:
	.byte	12
	.ascii	"\000"
	.long	1,14
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSTREC
RTTI_DOSCALLS_TQSTREC:
	.byte	13,7
	.ascii	"TQSTRec"
	.long	28,12
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_BYTE
	.long	24
	.long	RTTI_DOSCALLS_DEF491
	.long	25
	.long	RTTI_SYSTEM_BYTE
	.long	12
	.long	RTTI_SYSTEM_BYTE
	.long	13
	.long	RTTI_DOSCALLS_DEF492
	.long	14

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSPREC
INIT_DOSCALLS_PQSPREC:
	.byte	0
	.ascii	"\007PQSPRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSPREC
RTTI_DOSCALLS_PQSPREC:
	.byte	0
	.ascii	"\007PQSPRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSPREC
INIT_DOSCALLS_TQSPREC:
	.byte	13,7
	.ascii	"TQSPrec"
	.long	52,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSPREC
RTTI_DOSCALLS_TQSPREC:
	.byte	13,7
	.ascii	"TQSPrec"
	.long	52,19
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_PQSTREC
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_WORD
	.long	24
	.long	RTTI_SYSTEM_WORD
	.long	26
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_POINTER
	.long	32
	.long	RTTI_SYSTEM_WORD
	.long	36
	.long	RTTI_SYSTEM_WORD
	.long	38
	.long	RTTI_SYSTEM_WORD
	.long	40
	.long	RTTI_SYSTEM_WORD
	.long	42
	.long	RTTI_SYSTEM_WORD
	.long	44
	.long	RTTI_SYSTEM_WORD
	.long	46
	.long	RTTI_SYSTEM_WORD
	.long	48
	.long	RTTI_SYSTEM_WORD
	.long	50

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSS16REC
INIT_DOSCALLS_PQSS16REC:
	.byte	0
	.ascii	"\011PQSS16Rec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSS16REC
RTTI_DOSCALLS_PQSS16REC:
	.byte	0
	.ascii	"\011PQSS16Rec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSS16REC
INIT_DOSCALLS_TQSS16REC:
	.byte	13,9
	.ascii	"TQSS16Rec"
	.long	15,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF497
RTTI_DOSCALLS_DEF497:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSS16REC
RTTI_DOSCALLS_TQSS16REC:
	.byte	13,9
	.ascii	"TQSS16Rec"
	.long	15,9
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	6
	.long	RTTI_SYSTEM_BYTE
	.long	7
	.long	RTTI_SYSTEM_BYTE
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	9
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_DOSCALLS_DEF497
	.long	14

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSS16HEADREC
INIT_DOSCALLS_PQSS16HEADREC:
	.byte	0
	.ascii	"\015PQSS16HeadRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSS16HEADREC
RTTI_DOSCALLS_PQSS16HEADREC:
	.byte	0
	.ascii	"\015PQSS16HeadRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSS16HEADREC
INIT_DOSCALLS_TQSS16HEADREC:
	.byte	13,13
	.ascii	"TQSS16HeadRec"
	.long	20,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSS16HEADREC
RTTI_DOSCALLS_TQSS16HEADREC:
	.byte	13,13
	.ascii	"TQSS16HeadRec"
	.long	20,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSMREC
INIT_DOSCALLS_PQSMREC:
	.byte	0
	.ascii	"\007PQSMRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSMREC
RTTI_DOSCALLS_PQSMREC:
	.byte	0
	.ascii	"\007PQSMRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSMREC
INIT_DOSCALLS_TQSMREC:
	.byte	13,7
	.ascii	"TQSMRec"
	.long	11,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_DEF502
RTTI_DOSCALLS_DEF502:
	.byte	12
	.ascii	"\000"
	.long	1,1
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSMREC
RTTI_DOSCALLS_TQSMREC:
	.byte	13,7
	.ascii	"TQSMRec"
	.long	11,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_DOSCALLS_DEF502
	.long	10

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSOPENQ
INIT_DOSCALLS_PQSOPENQ:
	.byte	0
	.ascii	"\010PQSOpenQ"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSOPENQ
RTTI_DOSCALLS_PQSOPENQ:
	.byte	0
	.ascii	"\010PQSOpenQ"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSOPENQ
INIT_DOSCALLS_TQSOPENQ:
	.byte	13,8
	.ascii	"TQSOpenQ"
	.long	4,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSOPENQ
RTTI_DOSCALLS_TQSOPENQ:
	.byte	13,8
	.ascii	"TQSOpenQ"
	.long	4,2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSEVENT
INIT_DOSCALLS_PQSEVENT:
	.byte	0
	.ascii	"\010PQSEvent"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSEVENT
RTTI_DOSCALLS_PQSEVENT:
	.byte	0
	.ascii	"\010PQSEvent"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSEVENT
INIT_DOSCALLS_TQSEVENT:
	.byte	13,8
	.ascii	"TQSEvent"
	.long	16,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSEVENT
RTTI_DOSCALLS_TQSEVENT:
	.byte	13,8
	.ascii	"TQSEvent"
	.long	16,5
	.long	RTTI_DOSCALLS_PQSOPENQ
	.long	0
	.long	RTTI_SYSTEM_PCHAR
	.long	4
	.long	RTTI_SYSTEM_PCARDINAL
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSMUTEX
INIT_DOSCALLS_PQSMUTEX:
	.byte	0
	.ascii	"\010PQSMutex"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSMUTEX
RTTI_DOSCALLS_PQSMUTEX:
	.byte	0
	.ascii	"\010PQSMutex"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSMUTEX
INIT_DOSCALLS_TQSMUTEX:
	.byte	13,8
	.ascii	"TQSMutex"
	.long	20,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSMUTEX
RTTI_DOSCALLS_TQSMUTEX:
	.byte	13,8
	.ascii	"TQSMutex"
	.long	20,7
	.long	RTTI_DOSCALLS_PQSOPENQ
	.long	0
	.long	RTTI_SYSTEM_PCHAR
	.long	4
	.long	RTTI_SYSTEM_PCARDINAL
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_WORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSMUX
INIT_DOSCALLS_PQSMUX:
	.byte	0
	.ascii	"\006PQSMux"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSMUX
RTTI_DOSCALLS_PQSMUX:
	.byte	0
	.ascii	"\006PQSMux"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSMUX
INIT_DOSCALLS_TQSMUX:
	.byte	13,6
	.ascii	"TQSMux"
	.long	20,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSMUX
RTTI_DOSCALLS_TQSMUX:
	.byte	13,6
	.ascii	"TQSMux"
	.long	20,7
	.long	RTTI_DOSCALLS_PQSOPENQ
	.long	0
	.long	RTTI_SYSTEM_PCHAR
	.long	4
	.long	RTTI_DOSCALLS_PSEMARRAY
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_WORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSSHUN
INIT_DOSCALLS_PQSSHUN:
	.byte	0
	.ascii	"\007PQSSHUN"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSSHUN
RTTI_DOSCALLS_PQSSHUN:
	.byte	0
	.ascii	"\007PQSSHUN"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSSHUN
INIT_DOSCALLS_TQSSHUN:
	.byte	13,7
	.ascii	"TQSSHUN"
	.long	12,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSSHUN
RTTI_DOSCALLS_TQSSHUN:
	.byte	13,7
	.ascii	"TQSSHUN"
	.long	12,3
	.long	RTTI_DOSCALLS_PQSEVENT
	.long	0
	.long	RTTI_DOSCALLS_PQSMUTEX
	.long	4
	.long	RTTI_DOSCALLS_PQSMUX
	.long	8

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSS32REC
INIT_DOSCALLS_PQSS32REC:
	.byte	0
	.ascii	"\011PQSS32Rec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSS32REC
RTTI_DOSCALLS_PQSS32REC:
	.byte	0
	.ascii	"\011PQSS32Rec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSS32REC
INIT_DOSCALLS_TQSS32REC:
	.byte	13,9
	.ascii	"TQSS32Rec"
	.long	8,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSS32REC
RTTI_DOSCALLS_TQSS32REC:
	.byte	13,9
	.ascii	"TQSS32Rec"
	.long	8,2
	.long	RTTI_DOSCALLS_PQSS32REC
	.long	0
	.long	RTTI_DOSCALLS_PQSSHUN
	.long	4

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSLOBJREC
INIT_DOSCALLS_PQSLOBJREC:
	.byte	0
	.ascii	"\012PQSLObjRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSLOBJREC
RTTI_DOSCALLS_PQSLOBJREC:
	.byte	0
	.ascii	"\012PQSLObjRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSLOBJREC
INIT_DOSCALLS_TQSLOBJREC:
	.byte	13,10
	.ascii	"TQSLObjRec"
	.long	12,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSLOBJREC
RTTI_DOSCALLS_TQSLOBJREC:
	.byte	13,10
	.ascii	"TQSLObjRec"
	.long	12,3
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSLREC
INIT_DOSCALLS_PQSLREC:
	.byte	0
	.ascii	"\007PQSLRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSLREC
RTTI_DOSCALLS_PQSLREC:
	.byte	0
	.ascii	"\007PQSLRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSLREC
INIT_DOSCALLS_TQSLREC:
	.byte	13,7
	.ascii	"TQSLRec"
	.long	24,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSLREC
RTTI_DOSCALLS_TQSLREC:
	.byte	13,7
	.ascii	"TQSLRec"
	.long	24,7
	.long	RTTI_DOSCALLS_PQSLREC
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_DOSCALLS_PQSLOBJREC
	.long	16
	.long	RTTI_SYSTEM_PCHAR
	.long	20

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSEXLREC
INIT_DOSCALLS_PQSEXLREC:
	.byte	0
	.ascii	"\011PQSExLRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSEXLREC
RTTI_DOSCALLS_PQSEXLREC:
	.byte	0
	.ascii	"\011PQSExLRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSEXLREC
INIT_DOSCALLS_TQSEXLREC:
	.byte	13,9
	.ascii	"TQSExLRec"
	.long	38,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSEXLREC
RTTI_DOSCALLS_TQSEXLREC:
	.byte	13,9
	.ascii	"TQSExLRec"
	.long	38,11
	.long	RTTI_DOSCALLS_PQSEXLREC
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	10
	.long	RTTI_SYSTEM_LONGWORD
	.long	14
	.long	RTTI_SYSTEM_POINTER
	.long	18
	.long	RTTI_SYSTEM_PCHAR
	.long	22
	.long	RTTI_SYSTEM_LONGWORD
	.long	26
	.long	RTTI_SYSTEM_PCHAR
	.long	30
	.long	RTTI_SYSTEM_LONGWORD
	.long	34

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSSFT
INIT_DOSCALLS_PQSSFT:
	.byte	0
	.ascii	"\006PQSSft"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSSFT
RTTI_DOSCALLS_PQSSFT:
	.byte	0
	.ascii	"\006PQSSft"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSSFT
INIT_DOSCALLS_TQSSFT:
	.byte	13,6
	.ascii	"TQSSft"
	.long	22,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSSFT
RTTI_DOSCALLS_TQSSFT:
	.byte	13,6
	.ascii	"TQSSft"
	.long	22,10
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	18
	.long	RTTI_SYSTEM_WORD
	.long	20

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSFREC
INIT_DOSCALLS_PQSFREC:
	.byte	0
	.ascii	"\007PQSFRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSFREC
RTTI_DOSCALLS_PQSFREC:
	.byte	0
	.ascii	"\007PQSFRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSFREC
INIT_DOSCALLS_TQSFREC:
	.byte	13,7
	.ascii	"TQSFRec"
	.long	16,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSFREC
RTTI_DOSCALLS_TQSFREC:
	.byte	13,7
	.ascii	"TQSFRec"
	.long	16,4
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_DOSCALLS_PQSFREC
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_DOSCALLS_PQSSFT
	.long	12

.data
	.balign 4
.globl	INIT_DOSCALLS_PQSPTRREC
INIT_DOSCALLS_PQSPTRREC:
	.byte	0
	.ascii	"\011PQSPtrRec"

.data
	.balign 4
.globl	RTTI_DOSCALLS_PQSPTRREC
RTTI_DOSCALLS_PQSPTRREC:
	.byte	0
	.ascii	"\011PQSPtrRec"

.data
	.balign 4
.globl	INIT_DOSCALLS_TQSPTRREC
INIT_DOSCALLS_TQSPTRREC:
	.byte	13,9
	.ascii	"TQSPtrRec"
	.long	32,0

.data
	.balign 4
.globl	RTTI_DOSCALLS_TQSPTRREC
RTTI_DOSCALLS_TQSPTRREC:
	.byte	13,9
	.ascii	"TQSPtrRec"
	.long	32,8
	.long	RTTI_DOSCALLS_PQSGREC
	.long	0
	.long	RTTI_DOSCALLS_PQSPREC
	.long	4
	.long	RTTI_DOSCALLS_PQSS16HEADREC
	.long	8
	.long	RTTI_DOSCALLS_PQSS32REC
	.long	12
	.long	RTTI_DOSCALLS_PQSMREC
	.long	16
	.long	RTTI_DOSCALLS_PQSLREC
	.long	20
	.long	RTTI_DOSCALLS_PQSMREC
	.long	24
	.long	RTTI_DOSCALLS_PQSFREC
	.long	28
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

