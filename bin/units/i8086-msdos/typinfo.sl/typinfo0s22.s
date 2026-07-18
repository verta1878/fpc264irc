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
	GLOBAL TYPINFO_$$_FINDPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_$$_FINDPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-6]
		push	ax
		call	TYPINFO_$$_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j536
		jmp	..@j537
..@j536:
..@j538:
		mov	ax,word VMT_$TYPINFO_$$_EPROPERTYERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRPROPERTYNOTFOUND+2]
		mov	dx,word [bp+6]
		mov	ax,0
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		mov	word [bp-12],11
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j538
		push	ax
		push	bp
		call	fpc_raiseexception
..@j537:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRPROPERTYNOTFOUND
EXTERN	VMT_$TYPINFO_$$_EPROPERTYERROR
EXTERN	TYPINFO_$$_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
