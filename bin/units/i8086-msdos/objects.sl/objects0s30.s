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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_GETSIZE$$LONGINT
OBJECTS$_$TSTREAM_$__$$_GETSIZE$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		je	..@j391
		jmp	..@j392
..@j391:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [bp-4],ax
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		jmp	..@j395
..@j392:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
..@j395:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
