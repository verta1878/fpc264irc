# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PASZLIB_ZLIBVERSION$$SHORTSTRING
_PASZLIB_ZLIBVERSION$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZBASE_ZLIBVERSION$$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATE$Z_STREAM$LONGINT$$LONGINT
_PASZLIB_DEFLATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATEEND$Z_STREAM$$LONGINT
_PASZLIB_DEFLATEEND$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATE$Z_STREAM$LONGINT$$LONGINT
_PASZLIB_INFLATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATEEND$Z_STREAM$$LONGINT
_PASZLIB_INFLATEEND$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATESETDICTIONARY$Z_STREAM$PCHAR$LONGWORD$$LONGINT
_PASZLIB_DEFLATESETDICTIONARY$Z_STREAM$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATECOPY$Z_STREAM$Z_STREAM$$LONGINT
_PASZLIB_DEFLATECOPY$Z_STREAM$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATECOPY$Z_STREAMP$Z_STREAMP$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATERESET$Z_STREAM$$LONGINT
_PASZLIB_DEFLATERESET$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT
_PASZLIB_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATESETDICTIONARY$Z_STREAM$PCHAR$LONGWORD$$LONGINT
_PASZLIB_INFLATESETDICTIONARY$Z_STREAM$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATESYNC$Z_STREAM$$LONGINT
_PASZLIB_INFLATESYNC$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATERESET$Z_STREAM$$LONGINT
_PASZLIB_INFLATERESET$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_COMPRESS$PCHAR$LONGWORD$PCHAR$LONGWORD$$LONGINT
_PASZLIB_COMPRESS$PCHAR$LONGWORD$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZCOMPRES_COMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_COMPRESS2$PCHAR$LONGWORD$PCHAR$LONGWORD$LONGINT$$LONGINT
_PASZLIB_COMPRESS2$PCHAR$LONGWORD$PCHAR$LONGWORD$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_UNCOMPRESS$PCHAR$LONGWORD$PCHAR$LONGWORD$$LONGINT
_PASZLIB_UNCOMPRESS$PCHAR$LONGWORD$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZUNCOMPR_UNCOMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZOPEN$PCHAR$PCHAR$$POINTER
_PASZLIB_GZOPEN$PCHAR$PCHAR$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-528(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-268(%ebp),%ebx
	movl	-4(%ebp),%ecx
	leal	-524(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-524(%ebp),%eax
	movl	%ebx,%edx
	call	L_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-528(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT
_PASZLIB_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
_PASZLIB_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
_PASZLIB_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZPUTS$POINTER$PCHAR$$LONGINT
_PASZLIB_GZPUTS$POINTER$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZPUTS$POINTER$PCHAR$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR
_PASZLIB_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZPUTC$POINTER$CHAR$$LONGINT
_PASZLIB_GZPUTC$POINTER$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_GZIO_GZPUTC$POINTER$CHAR$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZGETC$POINTER$$CHAR
_PASZLIB_GZGETC$POINTER$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GZGETC$POINTER$$LONGINT$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZFLUSH$POINTER$LONGINT$$LONGINT
_PASZLIB_GZFLUSH$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
_PASZLIB_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZREWIND$POINTER$$LONGINT
_PASZLIB_GZREWIND$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GZREWIND$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZTELL$POINTER$$LONGINT
_PASZLIB_GZTELL$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GZTELL$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZEOF$POINTER$$LONGBOOL
_PASZLIB_GZEOF$POINTER$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GZEOF$POINTER$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZCLOSE$POINTER$$LONGINT
_PASZLIB_GZCLOSE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GZCLOSE$POINTER$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GZERROR$POINTER$SMALLINT$$SHORTSTRING
_PASZLIB_GZERROR$POINTER$SMALLINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_ADLER32$LONGWORD$PCHAR$LONGWORD$$LONGWORD
_PASZLIB_ADLER32$LONGWORD$PCHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_CRC32$LONGWORD$PCHAR$LONGWORD$$LONGWORD
_PASZLIB_CRC32$LONGWORD$PCHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATEINIT_$Z_STREAM$LONGINT$PCHAR$LONGINT$$LONGINT
_PASZLIB_DEFLATEINIT_$Z_STREAM$LONGINT$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-272(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_ZDEFLATE_DEFLATEINIT_$Z_STREAMP$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATEINIT_$Z_STREAM$PCHAR$LONGINT$$LONGINT
_PASZLIB_INFLATEINIT_$Z_STREAM$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_ZINFLATE_INFLATEINIT_$Z_STREAMP$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATEINIT2_$crc99B3C09D
_PASZLIB_DEFLATEINIT2_$crc99B3C09D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-272(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATEINIT2_$Z_STREAM$LONGINT$PCHAR$LONGINT$$LONGINT
_PASZLIB_INFLATEINIT2_$Z_STREAM$LONGINT$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-272(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
_PASZLIB_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATEINIT$Z_STREAM$$LONGINT
_PASZLIB_INFLATEINIT$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
_PASZLIB_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT
_PASZLIB_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj398
Lj398:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$296,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_$PASZLIB$_Ld1$non_lazy_ptr-Lj398(%ebx),%ecx
	call	L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_ZERROR$LONGINT$$SHORTSTRING
_PASZLIB_ZERROR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_INFLATESYNCPOINT$PZSTREAM$$LONGINT
_PASZLIB_INFLATESYNCPOINT$PZSTREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATESYNCPOINT$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PASZLIB_GET_CRC_TABLE$$POINTER
_PASZLIB_GET_CRC_TABLE$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lget_crc32_table$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_PASZLIB
_THREADVARLIST_PASZLIB:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$PASZLIB$_Ld1
_$PASZLIB$_Ld1:
	.ascii	"\0031.2\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZBASE_ZLIBVERSION$$SHORTSTRING$stub:
.indirect_symbol _ZBASE_ZLIBVERSION$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATECOPY$Z_STREAMP$Z_STREAMP$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATECOPY$Z_STREAMP$Z_STREAMP$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZCOMPRES_COMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT$stub:
.indirect_symbol _ZCOMPRES_COMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT$stub:
.indirect_symbol _ZCOMPRES_COMPRESS2$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZUNCOMPR_UNCOMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT$stub:
.indirect_symbol _ZUNCOMPR_UNCOMPRESS$PBYTE$LONGWORD$array_of_BYTE$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_shortstr$stub:
.indirect_symbol fpc_pchar_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER$stub:
.indirect_symbol _GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZPUTS$POINTER$PCHAR$$LONGINT$stub:
.indirect_symbol _GZIO_GZPUTS$POINTER$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR$stub:
.indirect_symbol _GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZPUTC$POINTER$CHAR$$LONGINT$stub:
.indirect_symbol _GZIO_GZPUTC$POINTER$CHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZGETC$POINTER$$LONGINT$stub:
.indirect_symbol _GZIO_GZGETC$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZREWIND$POINTER$$LONGINT$stub:
.indirect_symbol _GZIO_GZREWIND$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZTELL$POINTER$$LONGINT$stub:
.indirect_symbol _GZIO_GZTELL$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZEOF$POINTER$$BOOLEAN$stub:
.indirect_symbol _GZIO_GZEOF$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZCLOSE$POINTER$$LONGINT$stub:
.indirect_symbol _GZIO_GZCLOSE$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING$stub:
.indirect_symbol _GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT_$Z_STREAMP$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT_$Z_STREAMP$LONGINT$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT_$Z_STREAMP$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT_$Z_STREAMP$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _ZBASE_ZERROR$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATESYNCPOINT$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATESYNCPOINT$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lget_crc32_table$stub:
.indirect_symbol get_crc32_table
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
.globl	_INIT_PASZLIB_TINTERNALSTATE
_INIT_PASZLIB_TINTERNALSTATE:
	.byte	13,14
	.ascii	"TInternalState"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_PASZLIB_TINTERNALSTATE
_RTTI_PASZLIB_TINTERNALSTATE:
	.byte	13,14
	.ascii	"TInternalState"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_PASZLIB_PINTERNALSTATE
_INIT_PASZLIB_PINTERNALSTATE:
	.byte	0
	.ascii	"\016PInternalState"

.const_data
	.align 2
.globl	_RTTI_PASZLIB_PINTERNALSTATE
_RTTI_PASZLIB_PINTERNALSTATE:
	.byte	0
	.ascii	"\016PInternalState"

.const_data
	.align 2
.globl	_INIT_PASZLIB_PZSTREAM
_INIT_PASZLIB_PZSTREAM:
	.byte	0
	.ascii	"\010PZstream"

.const_data
	.align 2
.globl	_RTTI_PASZLIB_PZSTREAM
_RTTI_PASZLIB_PZSTREAM:
	.byte	0
	.ascii	"\010PZstream"
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
L_$PASZLIB$_Ld1$non_lazy_ptr:
.indirect_symbol _$PASZLIB$_Ld1
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

