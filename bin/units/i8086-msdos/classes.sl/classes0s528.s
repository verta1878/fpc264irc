BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TRESOLVEREFERENCEVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN
CLASSES$_$TRESOLVEREFERENCEVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_RESOLVEREFERENCES$$BOOLEAN
		test	al,al
		jne	..@j11919
		jmp	..@j11920
..@j11919:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBUILDLISTVISITOR_$__$$_ADD$TLINKEDLISTITEM
..@j11920:
		mov	byte [bp-1],1
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBUILDLISTVISITOR_$__$$_ADD$TLINKEDLISTITEM
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_RESOLVEREFERENCES$$BOOLEAN
