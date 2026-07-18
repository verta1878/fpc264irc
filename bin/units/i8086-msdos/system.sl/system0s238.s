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
	GLOBAL SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN
SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	bx,word [bx+6]
		mov	ax,0
		mov	cx,0
		mov	dx,0
		and	bx,-32768
		cmp	bx,0
		jne	..@j3483
		cmp	dx,0
		jne	..@j3483
		cmp	cx,0
		jne	..@j3483
		cmp	ax,0
		jne	..@j3483
		jmp	..@j3484
..@j3483:
		mov	byte [bp-1],1
		jmp	..@j3485
..@j3484:
		mov	byte [bp-1],0
..@j3485:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
