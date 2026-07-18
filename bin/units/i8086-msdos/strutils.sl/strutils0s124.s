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
	GLOBAL STRUTILS_$$_ROMANTOINT$ANSISTRING$TROMANCONVERSIONSTRICTNESS$$LONGINT
STRUTILS_$$_ROMANTOINT$ANSISTRING$TROMANCONVERSIONSTRICTNESS$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+8]
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	STRUTILS_$$_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
		test	al,al
		je	..@j3693
		jmp	..@j3694
..@j3693:
..@j3701:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$STRUTILS_$$_SINVALIDROMANNUMERAL+2]
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		mov	word [bp-10],11
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j3701
		push	ax
		push	bp
		call	fpc_raiseexception
..@j3694:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$STRUTILS_$$_SINVALIDROMANNUMERAL
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	STRUTILS_$$_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
