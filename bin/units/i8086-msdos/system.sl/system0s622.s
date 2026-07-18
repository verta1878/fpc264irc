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
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_BEFOREDESTRUCTION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j15319
		cmp	dx,0
		jne	..@j15319
		jmp	..@j15320
..@j15319:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j15320:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_HANDLEERROR
