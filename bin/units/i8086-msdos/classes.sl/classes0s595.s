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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETTYPEINFOCOUNT$SMALLINT$$HRESULT
CLASSES$_$TCOMPONENT_$__$$_GETTYPEINFOCOUNT$SMALLINT$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j12939
		jmp	..@j12940
..@j12939:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+20]
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		call	[bx+6]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j12947
..@j12940:
		mov	word [bp-4],16385
		mov	word [bp-2],-32768
..@j12947:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
