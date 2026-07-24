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
	GLOBAL SYSUTILS_$$_GETENVIRONMENTVARIABLECOUNT$$SMALLINT
SYSUTILS_$$_GETENVIRONMENTVARIABLECOUNT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [U_$SYSTEM_$$_ENVP]
		call	SYSUTILS_$$_FPCCOUNTENVVAR$PPCHAR$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSUTILS_$$_FPCCOUNTENVVAR$PPCHAR$$SMALLINT
EXTERN	U_$SYSTEM_$$_ENVP
