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
	GLOBAL FINALIZE$_$DATEUTILS
FINALIZE$_$DATEUTILS:
	GLOBAL _DATEUTILS_$$_finalize_implicit$
_DATEUTILS_$$_finalize_implicit$:
		push	bp
		mov	bp,sp
		mov	ax,word TC_$DATEUTILS_$$_AMPMFORMATTING
		push	ax
		mov	ax,word RTTI_$DATEUTILS_$$_DEF430
		push	ax
		call	fpc_finalize
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_const
EXTERN	fpc_finalize
EXTERN	RTTI_$DATEUTILS_$$_DEF430
EXTERN	TC_$DATEUTILS_$$_AMPMFORMATTING
