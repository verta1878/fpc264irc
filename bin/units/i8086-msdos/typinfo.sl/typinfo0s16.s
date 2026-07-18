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
	GLOBAL TYPINFO_$$_GETPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_$$_GETPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-6]
		push	ax
		call	TYPINFO_$$_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
