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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j12200
		jmp	..@j12201
..@j12200:
		mov	bx,word [bp+6]
		push	word [bx+6]
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-258]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_FIELDADDRESS$SHORTSTRING$$POINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j12214
		jmp	..@j12215
..@j12214:
		cmp	byte [bp+4],0
		jne	..@j12216
		jmp	..@j12217
..@j12216:
		mov	bx,word [bp-2]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		jmp	..@j12220
..@j12217:
		mov	bx,word [bp-2]
		mov	word [bx],0
..@j12220:
..@j12215:
..@j12201:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_FIELDADDRESS$SHORTSTRING$$POINTER
EXTERN	fpc_ansistr_to_shortstr
