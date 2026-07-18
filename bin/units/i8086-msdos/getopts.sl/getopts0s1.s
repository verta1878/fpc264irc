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

EXTERN	U_$SYSTEM_$$_ARGV
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
EXTERN	fpc_shortstr_compare_equal
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
EXTERN	fpc_shortstr_copy
EXTERN	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
EXTERN	fpc_get_output
EXTERN	fpc_write_text_pchar_as_pointer
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_char
EXTERN	U_$SYSTEM_$$_ARGC
EXTERN	RTTI_$SYSTEM_$$_SHORTSTRING
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_PCHAR
EXTERN	RTTI_$SYSTEM_$$_CHAR
; Begin asmlist al_procedures
