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
	GLOBAL MATH_$$_INVALIDARGUMENT
MATH_$$_INVALIDARGUMENT:
		push	bp
		mov	bp,sp
..@j24:
		mov	ax,word VMT_$MATH_$$_EINVALIDARGUMENT
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$MATH_$$_SINVALIDARGUMENT+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j24
		push	ax
		push	bp
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$MATH_$$_SINVALIDARGUMENT
EXTERN	VMT_$MATH_$$_EINVALIDARGUMENT
