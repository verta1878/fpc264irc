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
	GLOBAL SYSUTILS_$$_GETTICKCOUNT$$LONGWORD
SYSUTILS_$$_GETTICKCOUNT$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	SYSUTILS_$$_GETTICKCOUNT64$$QWORD
		mov	ax,dx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSUTILS_$$_GETTICKCOUNT64$$QWORD
