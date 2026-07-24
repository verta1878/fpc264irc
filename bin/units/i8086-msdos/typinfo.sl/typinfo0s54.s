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
	GLOBAL TYPINFO_$$_GETOBJECTPROPCLASS$TOBJECT$ANSISTRING$$TCLASS
TYPINFO_$$_GETOBJECTPROPCLASS$TOBJECT$ANSISTRING$$TCLASS:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word _$TYPINFO$_Ld8
		push	ax
		call	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
		mov	bx,ax
		push	word [bx]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
EXTERN	_$TYPINFO$_Ld8
