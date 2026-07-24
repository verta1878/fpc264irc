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

EXTERN	MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
EXTERN	MATH_$$_ARCTAN2$EXTENDED$EXTENDED$$EXTENDED
EXTERN	fpc_exp_real
EXTERN	fpc_cos_real
EXTERN	fpc_sin_real
EXTERN	MATH_$$_COSH$EXTENDED$$EXTENDED
EXTERN	MATH_$$_SINH$EXTENDED$$EXTENDED
EXTERN	fpc_shortstr_float
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	fpc_shortstr_concat_multi
EXTERN	RTTI_$SYSTEM_$$_REAL
; Begin asmlist al_procedures
