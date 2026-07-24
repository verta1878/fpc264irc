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
	GLOBAL CLASSES$_$TBITS_$__$$_EQUALS$TOBJECT$$BOOLEAN
CLASSES$_$TBITS_$__$$_EQUALS$TOBJECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word VMT_$CLASSES_$$_TBITS
		push	ax
		push	word [bp+4]
		call	fpc_do_is
		test	al,al
		jne	..@j446
		jmp	..@j447
..@j446:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_EQUALS$TBITS$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j458
..@j447:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
		mov	byte [bp-1],al
..@j458:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
EXTERN	CLASSES$_$TBITS_$__$$_EQUALS$TBITS$$BOOLEAN
EXTERN	fpc_do_is
EXTERN	VMT_$CLASSES_$$_TBITS
