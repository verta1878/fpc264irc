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
	GLOBAL TYPINFO_$$_CHECKVARIANTEVENT$NEARPOINTER
TYPINFO_$$_CHECKVARIANTEVENT$NEARPOINTER:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		je	..@j2412
		jmp	..@j2413
..@j2412:
..@j2414:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRNOVARIANTSUPPORT+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j2414
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2413:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRNOVARIANTSUPPORT
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
