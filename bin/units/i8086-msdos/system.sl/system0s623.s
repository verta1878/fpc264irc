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
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TINTERFACEDOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j15329
		jmp	..@j15330
..@j15329:
		mov	bx,word [bp-2]
		mov	word [bx+2],1
		mov	word [bx+4],0
..@j15330:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
