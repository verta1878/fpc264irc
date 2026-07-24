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
	GLOBAL SYSUTILS_$$_SYSERRORMESSAGE$SMALLINT$$ANSISTRING
SYSUTILS_$$_SYSERRORMESSAGE$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SUNKNOWNERRORCODE+2]
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	word [bp-6],0
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	RESSTR_$SYSCONST_$$_SUNKNOWNERRORCODE
