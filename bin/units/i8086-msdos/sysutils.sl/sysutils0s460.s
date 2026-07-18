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
	GLOBAL SYSUTILS_$$_ABORT
SYSUTILS_$$_ABORT:
		push	bp
		mov	bp,sp
		mov	ax,word VMT_$SYSUTILS_$$_EABORT
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SABORTERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		push	bp
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
		push	ax
		mov	ax,0
		push	ax
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_raiseexception
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SABORTERROR
EXTERN	VMT_$SYSUTILS_$$_EABORT
