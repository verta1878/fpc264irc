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

SECTION text
	ALIGN 2
	GLOBAL GETOPTS_$$_GETOPT_INIT$SHORTSTRING
GETOPTS_$$_GETOPT_INIT$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	byte [U_$GETOPTS_$$_OPTARG],0
		mov	word [U_$GETOPTS_$$_OPTIND],1
		mov	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT],1
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT+2],0
		mov	word [U_$GETOPTS_$$_LAST_NONOPT],1
		mov	word [U_$GETOPTS_$$_LAST_NONOPT+2],0
		mov	byte [U_$GETOPTS_$$_OPTOPT],63
		mov	word [U_$GETOPTS_$$_NEXTCHAR],0
		mov	word [U_$GETOPTS_$$_NEXTCHAR+2],0
		mov	bx,word [bp+4]
		mov	al,byte [bx+1]
		cmp	al,43
		jb	..@j71
		sub	al,43
		je	..@j73
		sub	al,2
		je	..@j72
		jmp	..@j71
..@j72:
		mov	word [U_$GETOPTS_$$_ORDERING],2
		mov	word [U_$GETOPTS_$$_ORDERING+2],0
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		jmp	..@j70
..@j73:
		mov	word [U_$GETOPTS_$$_ORDERING],0
		mov	word [U_$GETOPTS_$$_ORDERING+2],0
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		jmp	..@j70
..@j71:
		mov	word [U_$GETOPTS_$$_ORDERING],1
		mov	word [U_$GETOPTS_$$_ORDERING+2],0
..@j70:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	U_$GETOPTS_$$_ORDERING
EXTERN	U_$GETOPTS_$$_NEXTCHAR
EXTERN	U_$GETOPTS_$$_OPTOPT
EXTERN	U_$GETOPTS_$$_LAST_NONOPT
EXTERN	U_$GETOPTS_$$_FIRST_NONOPT
EXTERN	U_$GETOPTS_$$_OPTIND
EXTERN	U_$GETOPTS_$$_OPTARG
