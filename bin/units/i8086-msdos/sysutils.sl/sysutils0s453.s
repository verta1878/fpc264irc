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
	GLOBAL SYSUTILS_$$_DONEEXCEPTIONS
SYSUTILS_$$_DONEEXCEPTIONS:
		push	bp
		mov	bp,sp
		mov	bx,word [U_$SYSUTILS_$$_OUTOFMEMORY]
		mov	byte [bx+8],1
		push	word [U_$SYSUTILS_$$_OUTOFMEMORY]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	bx,word [U_$SYSUTILS_$$_INVALIDPOINTER]
		mov	byte [bx+8],1
		push	word [U_$SYSUTILS_$$_INVALIDPOINTER]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSUTILS_$$_INVALIDPOINTER
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	U_$SYSUTILS_$$_OUTOFMEMORY
