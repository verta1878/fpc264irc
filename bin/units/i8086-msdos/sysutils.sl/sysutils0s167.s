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
	GLOBAL SYSUTILS_$$_STRTOFLOAT$ANSISTRING$TFORMATSETTINGS$$EXTENDED
SYSUTILS_$$_STRTOFLOAT$ANSISTRING$TFORMATSETTINGS$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+6]
		lea	ax,[bp-10]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
		test	al,al
		je	..@j5378
		jmp	..@j5379
..@j5378:
..@j5386:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDFLOAT+2]
		mov	dx,word [bp+6]
		mov	ax,0
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		mov	word [bp-16],11
		lea	ax,[bp-16]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j5386
		push	ax
		push	bp
		call	fpc_raiseexception
..@j5379:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFLOAT
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
