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
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	FPC_POPOBJECTSTACK
		mov	word [bp-2],ax
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPOBJECTSTACK
