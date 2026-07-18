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
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT
SYSTEM$_$TINTERFACEDOBJECT_$__$$__RELEASE$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		lea	ax,[bx+2]
		push	ax
		call	SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j15308
		cmp	ax,0
		jne	..@j15308
		jmp	..@j15307
..@j15307:
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j15308:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
