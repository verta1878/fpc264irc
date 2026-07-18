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
	GLOBAL FINALIZE$_$TYPINFO
FINALIZE$_$TYPINFO:
	GLOBAL _TYPINFO_$$_finalize_implicit$
_TYPINFO_$$_finalize_implicit$:
		push	bp
		mov	bp,sp
		mov	ax,word TC_$TYPINFO_$$_BOOLEANIDENTS
		push	ax
		mov	ax,word RTTI_$TYPINFO_$$_DEF138
		push	ax
		call	fpc_finalize
		mov	ax,word TC_$TYPINFO_$$_DOTSEP
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	fpc_ansistr_decr_ref
EXTERN	TC_$TYPINFO_$$_DOTSEP
EXTERN	fpc_finalize
EXTERN	RTTI_$TYPINFO_$$_DEF138
EXTERN	TC_$TYPINFO_$$_BOOLEANIDENTS
