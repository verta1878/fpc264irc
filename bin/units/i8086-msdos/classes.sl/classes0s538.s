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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_INSERT$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_INSERT$TCOMPONENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+12],0
		je	..@j12110
		jmp	..@j12111
..@j12110:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+12],ax
..@j12111:
		mov	bx,word [bp+6]
		push	word [bx+12]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
