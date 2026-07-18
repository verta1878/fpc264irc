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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_CLEANUPINSTANCE
		push	word [bp+4]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLEANUPINSTANCE
