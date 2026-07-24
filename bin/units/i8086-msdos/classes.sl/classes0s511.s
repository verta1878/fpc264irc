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
	GLOBAL CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_RESOLVE$TPERSISTENT$$BOOLEAN
CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_RESOLVE$TPERSISTENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		mov	al,0
		je	..@j11393
		inc	ax
..@j11393:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j11394
		jmp	..@j11395
..@j11394:
		push	word [bp-4]
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	ax,1
		push	ax
		call	CLASSES_$$_FINDNESTEDCOMPONENT$TCOMPONENT$ANSISTRING$BOOLEAN$$TCOMPONENT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		mov	al,0
		je	..@j11406
		inc	ax
..@j11406:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j11407
		jmp	..@j11408
..@j11407:
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp-4]
		call	TYPINFO_$$_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
..@j11408:
..@j11395:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
EXTERN	CLASSES_$$_FINDNESTEDCOMPONENT$TCOMPONENT$ANSISTRING$BOOLEAN$$TCOMPONENT
EXTERN	CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
