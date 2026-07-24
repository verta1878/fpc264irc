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
	GLOBAL MATH_$$_DOMATHERROR$SHORTSTRING
MATH_$$_DOMATHERROR$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
..@j5:
		mov	ax,word VMT_$SYSUTILS_$$_EMATHERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$MATH_$$_SMATHERROR+2]
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	word [bp-6],4
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j5
		push	ax
		push	bp
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$MATH_$$_SMATHERROR
EXTERN	VMT_$SYSUTILS_$$_EMATHERROR
