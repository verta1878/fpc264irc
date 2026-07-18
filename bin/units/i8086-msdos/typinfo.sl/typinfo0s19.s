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
	GLOBAL TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j451
		jmp	..@j452
..@j451:
..@j453:
		mov	ax,word VMT_$TYPINFO_$$_EPROPERTYERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRPROPERTYNOTFOUND+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	word [bp-8],11
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j453
		push	ax
		push	bp
		call	fpc_raiseexception
..@j452:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRPROPERTYNOTFOUND
EXTERN	VMT_$TYPINFO_$$_EPROPERTYERROR
EXTERN	TYPINFO_$$_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
