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
	GLOBAL SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN
SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	ax,0
		and	dx,-32768
		cmp	dx,0
		jne	..@j3587
		cmp	ax,0
		jne	..@j3587
		jmp	..@j3588
..@j3587:
		mov	byte [bp-1],1
		jmp	..@j3589
..@j3588:
		mov	byte [bp-1],0
..@j3589:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
