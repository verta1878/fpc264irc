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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
