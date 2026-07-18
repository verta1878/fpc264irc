# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ERRORS_STRERROR$LONGINT$$SHORTSTRING
_ERRORS_STRERROR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-296(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj5
	jmp	Lj7
Lj7:
	movl	-4(%ebp),%eax
	cmpl	$94,%eax
	jge	Lj5
	jmp	Lj6
Lj5:
	movl	$12,(%esp)
	leal	-21(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movl	$2,(%esp)
	movl	L_$ERRORS$_Ld95$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-36(%ebp)
	leal	-21(%ebp),%ecx
	leal	-292(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-292(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	L_$ERRORS$_Ld96$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-28(%ebp)
	leal	-36(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj30
Lj6:
	movl	-4(%ebp),%eax
	movl	L_TC_ERRORS_SYS_ERRLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	leal	-280(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-280(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj30:
	movl	-296(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ERRORS_PERROR$SHORTSTRING$LONGINT
_ERRORS_PERROR$SHORTSTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	call	Lj42
Lj42:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj42(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj45
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj46
Lj45:
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%eax
	leal	4(%eax),%edx
Lj46:
	movl	-4(%ebp),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj42(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj53
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj54
Lj53:
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%eax
	leal	4(%eax),%edx
Lj54:
	movl	L_$ERRORS$_Ld97$non_lazy_ptr-Lj42(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ERRORS_STRERROR$LONGINT$$SHORTSTRING$stub
	leal	-264(%ebp),%esi
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj42(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj67
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj68
Lj67:
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%eax
	leal	4(%eax),%edx
Lj68:
	movl	$0,%eax
	movl	%esi,%ecx
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj42(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj73
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj74
Lj73:
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj42(%ebx),%edx
	leal	4(%edx),%eax
Lj74:
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ERRORS
_THREADVARLIST_ERRORS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 3
.globl	_$ERRORS$_Ld1
_$ERRORS$_Ld1:
	.ascii	"Success\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld2
_$ERRORS$_Ld2:
	.ascii	"Operation not permitted\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld3
_$ERRORS$_Ld3:
	.ascii	"No such file or directory\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld4
_$ERRORS$_Ld4:
	.ascii	"No such process\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld5
_$ERRORS$_Ld5:
	.ascii	"Interrupted system call\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld6
_$ERRORS$_Ld6:
	.ascii	"I/O error\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld7
_$ERRORS$_Ld7:
	.ascii	"No such device or address\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld8
_$ERRORS$_Ld8:
	.ascii	"Arg list too long\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld9
_$ERRORS$_Ld9:
	.ascii	"Exec format error\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld10
_$ERRORS$_Ld10:
	.ascii	"Bad file number\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld11
_$ERRORS$_Ld11:
	.ascii	"No child processes\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld12
_$ERRORS$_Ld12:
	.ascii	"Resource deadlock avoided\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld13
_$ERRORS$_Ld13:
	.ascii	"Out of memory\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld14
_$ERRORS$_Ld14:
	.ascii	"Permission denied\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld15
_$ERRORS$_Ld15:
	.ascii	"Bad address\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld16
_$ERRORS$_Ld16:
	.ascii	"Block device required\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld17
_$ERRORS$_Ld17:
	.ascii	"Device or resource busy\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld18
_$ERRORS$_Ld18:
	.ascii	"File exists\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld19
_$ERRORS$_Ld19:
	.ascii	"Cross-device link\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld20
_$ERRORS$_Ld20:
	.ascii	"No such device\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld21
_$ERRORS$_Ld21:
	.ascii	"Not a directory\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld22
_$ERRORS$_Ld22:
	.ascii	"Is a directory\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld23
_$ERRORS$_Ld23:
	.ascii	"Invalid argument\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld24
_$ERRORS$_Ld24:
	.ascii	"File table overflow\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld25
_$ERRORS$_Ld25:
	.ascii	"Too many open files\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld26
_$ERRORS$_Ld26:
	.ascii	"Not a typewriter\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld27
_$ERRORS$_Ld27:
	.ascii	"Text (code segment) file busy\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld28
_$ERRORS$_Ld28:
	.ascii	"File too large\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld29
_$ERRORS$_Ld29:
	.ascii	"No space left on device\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld30
_$ERRORS$_Ld30:
	.ascii	"Illegal seek\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld31
_$ERRORS$_Ld31:
	.ascii	"Read-only file system\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld32
_$ERRORS$_Ld32:
	.ascii	"Too many links\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld33
_$ERRORS$_Ld33:
	.ascii	"Broken pipe\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld34
_$ERRORS$_Ld34:
	.ascii	"Math argument out of domain of func\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld35
_$ERRORS$_Ld35:
	.ascii	"Math result not representable\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld36
_$ERRORS$_Ld36:
	.ascii	"Resource temporarily unavailable\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld37
_$ERRORS$_Ld37:
	.ascii	"Operation now in progress\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld38
_$ERRORS$_Ld38:
	.ascii	"Operation already in progress\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld39
_$ERRORS$_Ld39:
	.ascii	"Socket operation on non-socket\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld40
_$ERRORS$_Ld40:
	.ascii	"Destination address required\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld41
_$ERRORS$_Ld41:
	.ascii	"Message too long\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld42
_$ERRORS$_Ld42:
	.ascii	"Protocol wrong type for socket\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld43
_$ERRORS$_Ld43:
	.ascii	"Protocol not available\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld44
_$ERRORS$_Ld44:
	.ascii	"Protocol not supported\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld45
_$ERRORS$_Ld45:
	.ascii	"Socket type not supported\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld46
_$ERRORS$_Ld46:
	.ascii	"Operation not supported\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld47
_$ERRORS$_Ld47:
	.ascii	"Protocol family not supported\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld48
_$ERRORS$_Ld48:
	.ascii	"Address family not supported by protocol family\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld49
_$ERRORS$_Ld49:
	.ascii	"Address already in use\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld50
_$ERRORS$_Ld50:
	.ascii	"Can't assign requested address\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld51
_$ERRORS$_Ld51:
	.ascii	"Network is down\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld52
_$ERRORS$_Ld52:
	.ascii	"Network is unreachable\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld53
_$ERRORS$_Ld53:
	.ascii	"Network dropped connection on reset\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld54
_$ERRORS$_Ld54:
	.ascii	"Software caused connection abort\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld55
_$ERRORS$_Ld55:
	.ascii	"Connection reset by peer\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld56
_$ERRORS$_Ld56:
	.ascii	"No buffer space available\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld57
_$ERRORS$_Ld57:
	.ascii	"Socket is already connected\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld58
_$ERRORS$_Ld58:
	.ascii	"Socket is not connected\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld59
_$ERRORS$_Ld59:
	.ascii	"Can't send after socket shutdown\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld60
_$ERRORS$_Ld60:
	.ascii	"Too many references: can't splice\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld61
_$ERRORS$_Ld61:
	.ascii	"Operation timed out\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld62
_$ERRORS$_Ld62:
	.ascii	"Connection refused\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld63
_$ERRORS$_Ld63:
	.ascii	"Too many levels of symbolic links\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld64
_$ERRORS$_Ld64:
	.ascii	"File name too long\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld65
_$ERRORS$_Ld65:
	.ascii	"Host is down\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld66
_$ERRORS$_Ld66:
	.ascii	"No route to host\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld67
_$ERRORS$_Ld67:
	.ascii	"Directory not empty\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld68
_$ERRORS$_Ld68:
	.ascii	"Too many processes\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld69
_$ERRORS$_Ld69:
	.ascii	"Too many users\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld70
_$ERRORS$_Ld70:
	.ascii	"Disc quota exceeded\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld71
_$ERRORS$_Ld71:
	.ascii	"Stale NFS file handle\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld72
_$ERRORS$_Ld72:
	.ascii	"Too many levels of remote in path\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld73
_$ERRORS$_Ld73:
	.ascii	"RPC struct is bad\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld74
_$ERRORS$_Ld74:
	.ascii	"RPC version wrong\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld75
_$ERRORS$_Ld75:
	.ascii	"RPC prog. not avail\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld76
_$ERRORS$_Ld76:
	.ascii	"Program version wrong\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld77
_$ERRORS$_Ld77:
	.ascii	"Bad procedure for program\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld78
_$ERRORS$_Ld78:
	.ascii	"No locks available\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld79
_$ERRORS$_Ld79:
	.ascii	"Function not implemented\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld80
_$ERRORS$_Ld80:
	.ascii	"Inappropriate file type or format\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld81
_$ERRORS$_Ld81:
	.ascii	"Authentication error\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld82
_$ERRORS$_Ld82:
	.ascii	"Need authenticator\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld83
_$ERRORS$_Ld83:
	.ascii	"Device power is off\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld84
_$ERRORS$_Ld84:
	.ascii	"Device error, e.g. paper out\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld85
_$ERRORS$_Ld85:
	.ascii	"Value too large to be stored in data type\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld86
_$ERRORS$_Ld86:
	.ascii	"Bad executable\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld87
_$ERRORS$_Ld87:
	.ascii	"Bad CPU type in executable\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld88
_$ERRORS$_Ld88:
	.ascii	"Shared library version mismatch\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld89
_$ERRORS$_Ld89:
	.ascii	"Malformed Macho file\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld90
_$ERRORS$_Ld90:
	.ascii	"Operation canceled\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld91
_$ERRORS$_Ld91:
	.ascii	"Identifier removed\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld92
_$ERRORS$_Ld92:
	.ascii	"No message of desired type\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld93
_$ERRORS$_Ld93:
	.ascii	"llegal byte sequence\000"

.const_data
	.align 3
.globl	_$ERRORS$_Ld94
_$ERRORS$_Ld94:
	.ascii	"Attribute not found\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_ERRORS_SYS_ERRLIST
_TC_ERRORS_SYS_ERRLIST:
	.long	_$ERRORS$_Ld1
	.long	_$ERRORS$_Ld2
	.long	_$ERRORS$_Ld3
	.long	_$ERRORS$_Ld4
	.long	_$ERRORS$_Ld5
	.long	_$ERRORS$_Ld6
	.long	_$ERRORS$_Ld7
	.long	_$ERRORS$_Ld8
	.long	_$ERRORS$_Ld9
	.long	_$ERRORS$_Ld10
	.long	_$ERRORS$_Ld11
	.long	_$ERRORS$_Ld12
	.long	_$ERRORS$_Ld13
	.long	_$ERRORS$_Ld14
	.long	_$ERRORS$_Ld15
	.long	_$ERRORS$_Ld16
	.long	_$ERRORS$_Ld17
	.long	_$ERRORS$_Ld18
	.long	_$ERRORS$_Ld19
	.long	_$ERRORS$_Ld20
	.long	_$ERRORS$_Ld21
	.long	_$ERRORS$_Ld22
	.long	_$ERRORS$_Ld23
	.long	_$ERRORS$_Ld24
	.long	_$ERRORS$_Ld25
	.long	_$ERRORS$_Ld26
	.long	_$ERRORS$_Ld27
	.long	_$ERRORS$_Ld28
	.long	_$ERRORS$_Ld29
	.long	_$ERRORS$_Ld30
	.long	_$ERRORS$_Ld31
	.long	_$ERRORS$_Ld32
	.long	_$ERRORS$_Ld33
	.long	_$ERRORS$_Ld34
	.long	_$ERRORS$_Ld35
	.long	_$ERRORS$_Ld36
	.long	_$ERRORS$_Ld37
	.long	_$ERRORS$_Ld38
	.long	_$ERRORS$_Ld39
	.long	_$ERRORS$_Ld40
	.long	_$ERRORS$_Ld41
	.long	_$ERRORS$_Ld42
	.long	_$ERRORS$_Ld43
	.long	_$ERRORS$_Ld44
	.long	_$ERRORS$_Ld45
	.long	_$ERRORS$_Ld46
	.long	_$ERRORS$_Ld47
	.long	_$ERRORS$_Ld48
	.long	_$ERRORS$_Ld49
	.long	_$ERRORS$_Ld50
	.long	_$ERRORS$_Ld51
	.long	_$ERRORS$_Ld52
	.long	_$ERRORS$_Ld53
	.long	_$ERRORS$_Ld54
	.long	_$ERRORS$_Ld55
	.long	_$ERRORS$_Ld56
	.long	_$ERRORS$_Ld57
	.long	_$ERRORS$_Ld58
	.long	_$ERRORS$_Ld59
	.long	_$ERRORS$_Ld60
	.long	_$ERRORS$_Ld61
	.long	_$ERRORS$_Ld62
	.long	_$ERRORS$_Ld63
	.long	_$ERRORS$_Ld64
	.long	_$ERRORS$_Ld65
	.long	_$ERRORS$_Ld66
	.long	_$ERRORS$_Ld67
	.long	_$ERRORS$_Ld68
	.long	_$ERRORS$_Ld69
	.long	_$ERRORS$_Ld70
	.long	_$ERRORS$_Ld71
	.long	_$ERRORS$_Ld72
	.long	_$ERRORS$_Ld73
	.long	_$ERRORS$_Ld74
	.long	_$ERRORS$_Ld75
	.long	_$ERRORS$_Ld76
	.long	_$ERRORS$_Ld77
	.long	_$ERRORS$_Ld78
	.long	_$ERRORS$_Ld79
	.long	_$ERRORS$_Ld80
	.long	_$ERRORS$_Ld81
	.long	_$ERRORS$_Ld82
	.long	_$ERRORS$_Ld83
	.long	_$ERRORS$_Ld84
	.long	_$ERRORS$_Ld85
	.long	_$ERRORS$_Ld86
	.long	_$ERRORS$_Ld87
	.long	_$ERRORS$_Ld88
	.long	_$ERRORS$_Ld89
	.long	_$ERRORS$_Ld90
	.long	_$ERRORS$_Ld91
	.long	_$ERRORS$_Ld92
	.long	_$ERRORS$_Ld93
	.long	_$ERRORS$_Ld94

.const
	.align 2
.globl	_$ERRORS$_Ld95
_$ERRORS$_Ld95:
	.ascii	"\017Unknown Error (\000"

.const
	.align 2
.globl	_$ERRORS$_Ld96
_$ERRORS$_Ld96:
	.ascii	"\001)\000"

.const
	.align 2
.globl	_$ERRORS$_Ld97
_$ERRORS$_Ld97:
	.ascii	"\002: \000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_STRPAS$PCHAR$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ERRORS_STRERROR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _ERRORS_STRERROR$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ERRORS$_Ld95$non_lazy_ptr:
.indirect_symbol _$ERRORS$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ERRORS$_Ld96$non_lazy_ptr:
.indirect_symbol _$ERRORS$_Ld96
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ERRORS_SYS_ERRLIST$non_lazy_ptr:
.indirect_symbol _TC_ERRORS_SYS_ERRLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_STDERR$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_STDERR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ERRORS$_Ld97$non_lazy_ptr:
.indirect_symbol _$ERRORS$_Ld97
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

