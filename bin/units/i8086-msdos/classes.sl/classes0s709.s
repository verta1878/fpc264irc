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
	GLOBAL CLASSES_$$_INITINHERITEDCOMPONENT$TCOMPONENT$TCLASS$$BOOLEAN
CLASSES_$$_INITINHERITEDCOMPONENT$TCOMPONENT$TCLASS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		cmp	word [U_$CLASSES_$$_INITHANDLERLIST],0
		je	..@j15030
		jmp	..@j15031
..@j15030:
		mov	byte [bp-1],1
		jmp	..@j15026
..@j15031:
		mov	byte [bp-1],0
		mov	word [bp-4],0
		jmp	..@j15039
	ALIGN 2
..@j15038:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		push	word [bx+4]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j15041
		jmp	..@j15042
..@j15041:
		push	word [bp+6]
		push	word [bp+4]
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	ax,word [bx+2]
		call	ax
		mov	byte [bp-1],al
..@j15042:
		inc	word [bp-4]
..@j15039:
		cmp	byte [bp-1],0
		je	..@j15061
		jmp	..@j15040
..@j15061:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		cmp	ax,word [bp-4]
		jg	..@j15038
		jmp	..@j15040
..@j15040:
..@j15026:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	U_$CLASSES_$$_INITHANDLERLIST
