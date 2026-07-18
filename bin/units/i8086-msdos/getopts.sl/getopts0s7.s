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
	GLOBAL INIT$_$GETOPTS
INIT$_$GETOPTS:
	GLOBAL _GETOPTS_$$_init$
_GETOPTS_$$_init$:
		push	bp
		mov	bp,sp
		mov	byte [U_$GETOPTS_$$_OPTERR],1
		mov	word [U_$GETOPTS_$$_OPTIND],0
		mov	word [U_$GETOPTS_$$_OPTIND+2],0
		mov	ax,word [U_$SYSTEM_$$_ARGC]
		mov	word [U_$GETOPTS_$$_NRARGS],ax
		mov	ax,word [U_$SYSTEM_$$_ARGC+2]
		mov	word [U_$GETOPTS_$$_NRARGS+2],ax
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	U_$GETOPTS_$$_NRARGS
EXTERN	U_$SYSTEM_$$_ARGC
EXTERN	U_$GETOPTS_$$_OPTIND
EXTERN	U_$GETOPTS_$$_OPTERR
