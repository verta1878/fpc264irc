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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_REMOVE$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_REMOVE$TCOMPONENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	word [bx+6],0
		mov	bx,word [bp+6]
		cmp	word [bx+12],0
		jne	..@j12140
		jmp	..@j12141
..@j12140:
		mov	bx,word [bp+6]
		push	word [bx+12]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_REMOVE$POINTER$$SMALLINT
		mov	bx,word [bp+6]
		mov	bx,word [bx+12]
		cmp	word [bx+4],0
		je	..@j12146
		jmp	..@j12147
..@j12146:
		mov	bx,word [bp+6]
		push	word [bx+12]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	bx,word [bp+6]
		mov	word [bx+12],0
..@j12147:
..@j12141:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TFPLIST_$__$$_REMOVE$POINTER$$SMALLINT
