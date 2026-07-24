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

EXTERN	TC_$SYSTEM_$$_ERRORCODE
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_concat_multi
EXTERN	fpc_shortstr_longint
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_SYSSETCTRLBREAKHANDLER$TCTRLBREAKHANDLER$$TCTRLBREAKHANDLER
EXTERN	FPC_INTR
EXTERN	RTTI_$SYSTEM_$$_WORD
EXTERN	RTTI_$SYSTEM_$$_BYTE
EXTERN	RTTI_$SYSTEM_$$_LONGWORD
; Begin asmlist al_procedures
