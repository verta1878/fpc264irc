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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETTYPEINFO$SMALLINT$SMALLINT$formal$$HRESULT
CLASSES$_$TCOMPONENT_$__$$_GETTYPEINFO$SMALLINT$SMALLINT$formal$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j12952
		jmp	..@j12953
..@j12952:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+4]
		push	word [bx+20]
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		call	[bx+8]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j12964
..@j12953:
		mov	word [bp-4],16385
		mov	word [bp-2],-32768
..@j12964:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
