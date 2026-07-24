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

EXTERN	FPC_INTR
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_end
EXTERN	fpc_shortstr_concat
EXTERN	fpc_shortstr_concat_multi
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	fpc_read_text_shortstr
EXTERN	fpc_readln_end
EXTERN	fpc_val_uint_shortstr
EXTERN	SYSTEM_$$_EOF$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	fpc_shortstr_longint
; Begin asmlist al_procedures
