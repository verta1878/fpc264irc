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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_REMOVENOTIFICATION$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_REMOVENOTIFICATION$TCOMPONENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+14],0
		jne	..@j12154
		jmp	..@j12155
..@j12154:
		mov	bx,word [bp+6]
		push	word [bx+14]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_REMOVE$POINTER$$SMALLINT
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		cmp	word [bx+4],0
		je	..@j12160
		jmp	..@j12161
..@j12160:
		mov	bx,word [bp+6]
		push	word [bx+14]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	bx,word [bp+6]
		mov	word [bx+14],0
		mov	bx,word [bp+6]
		mov	al,byte [bx+23]
		mov	ah,0
		and	ax,-2
		mov	byte [bx+23],al
..@j12161:
..@j12155:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TFPLIST_$__$$_REMOVE$POINTER$$SMALLINT
