BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL FINALIZE$_$CLASSES
FINALIZE$_$CLASSES:
	GLOBAL _CLASSES_$$_finalize$
_CLASSES_$$_finalize$:
		push	bp
		mov	bp,sp
		call	CLASSES_$$_COMMONCLEANUP
		mov	ax,word U_$CLASSES_$$_GLOBALNAMESPACE
		push	ax
		call	fpc_intf_decr_ref
		mov	ax,word TC_$CLASSES_$$_TOKNAMES
		push	ax
		mov	ax,word RTTI_$CLASSES_$$_DEF1661
		push	ax
		call	fpc_finalize
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_finalize
EXTERN	RTTI_$CLASSES_$$_DEF1661
EXTERN	TC_$CLASSES_$$_TOKNAMES
EXTERN	fpc_intf_decr_ref
EXTERN	U_$CLASSES_$$_GLOBALNAMESPACE
EXTERN	CLASSES_$$_COMMONCLEANUP
