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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_to_shortstr
