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
	GLOBAL CLASSES$_$TPROXYSTREAM_$__$$_CHECK$SMALLINT
CLASSES$_$TPROXYSTREAM_$__$$_CHECK$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word VMT_$SYSUTILS_$$_EINOUTERROR
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$CLASSES$_Ld2
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
..@j2860:
		push	word [bp-2]
		mov	ax,word ..@j2860
		push	ax
		push	bp
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	_$CLASSES$_Ld2
EXTERN	VMT_$SYSUTILS_$$_EINOUTERROR
