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
	GLOBAL FINALIZE$_$SYSUTILS
FINALIZE$_$SYSUTILS:
	GLOBAL _SYSUTILS_$$_finalize$
_SYSUTILS_$$_finalize$:
		push	bp
		mov	bp,sp
		call	SYSUTILS_$$_DONEEXCEPTIONS
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TFORMATSETTINGS
		push	ax
		call	fpc_finalize
		mov	ax,word TC_$SYSUTILS_$$_CONFIGEXTENSION
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word TC_$SYSUTILS_$$_SYSCONFIGDIR
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word TC_$SYSUTILS_$$_EMPTYSTR
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word TC_$SYSUTILS_$$_EMPTYWIDESTR
		push	ax
		call	fpc_unicodestr_decr_ref
		mov	ax,word U_$SYSUTILS_$$_TRUEBOOLSTRS
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_DEF185
		push	ax
		call	fpc_finalize
		mov	ax,word U_$SYSUTILS_$$_FALSEBOOLSTRS
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_DEF185
		push	ax
		call	fpc_finalize
		mov	ax,word TC_$SYSUTILS_$$_HEXDISPLAYPREFIX
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word TC_$SYSUTILS_$$_DATETIMETOSTRFORMAT
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_DEF1955
		push	ax
		call	fpc_finalize
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	RTTI_$SYSUTILS_$$_DEF1955
EXTERN	TC_$SYSUTILS_$$_DATETIMETOSTRFORMAT
EXTERN	TC_$SYSUTILS_$$_HEXDISPLAYPREFIX
EXTERN	U_$SYSUTILS_$$_FALSEBOOLSTRS
EXTERN	RTTI_$SYSUTILS_$$_DEF185
EXTERN	U_$SYSUTILS_$$_TRUEBOOLSTRS
EXTERN	fpc_unicodestr_decr_ref
EXTERN	TC_$SYSUTILS_$$_EMPTYWIDESTR
EXTERN	TC_$SYSUTILS_$$_EMPTYSTR
EXTERN	TC_$SYSUTILS_$$_SYSCONFIGDIR
EXTERN	fpc_ansistr_decr_ref
EXTERN	TC_$SYSUTILS_$$_CONFIGEXTENSION
EXTERN	fpc_finalize
EXTERN	INIT_$SYSUTILS_$$_TFORMATSETTINGS
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	SYSUTILS_$$_DONEEXCEPTIONS
