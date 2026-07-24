BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

EXTERN	_sock_init
EXTERN	_sock_exit
EXTERN	_socket
EXTERN	_bind
EXTERN	_connect
EXTERN	_listen
EXTERN	_accept
EXTERN	_shutdown
EXTERN	_send
EXTERN	_recv
EXTERN	_sendto
EXTERN	_recvfrom
EXTERN	_setsockopt
EXTERN	_getsockopt
EXTERN	_getsockname
EXTERN	_getpeername
EXTERN	_select_s
EXTERN	_close_s
EXTERN	_ioctlsocket
EXTERN	___errno
EXTERN	_inet_addr
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	FPC_SETJMP
EXTERN	_inet_ntoa
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
EXTERN	fpc_shortstr_to_ansistr
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	_inet_aton
EXTERN	_gethostbyname
EXTERN	_gethostbyaddr
EXTERN	_getservbyname
EXTERN	_getprotobyname
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	RTTI_$SYSTEM_$$_LONGINT
EXTERN	RTTI_$SYSTEM_$$_SHORTINT
EXTERN	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_PCHAR
; Begin asmlist al_procedures
