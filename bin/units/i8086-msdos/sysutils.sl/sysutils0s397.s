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
	GLOBAL SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_ENDREAD
SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_ENDREAD:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		lea	ax,[bx+13]
		push	ax
		call	FPC_INTERLOCKEDDECREMENT
		cmp	dx,0
		jne	..@j13145
		cmp	ax,0
		jne	..@j13145
		jmp	..@j13144
..@j13144:
		mov	bx,word [bp+4]
		mov	dx,word [bx+17]
		mov	ax,word [bx+19]
		cmp	ax,0
		jne	..@j13149
		cmp	dx,0
		jne	..@j13149
		jmp	..@j13150
..@j13149:
		mov	bx,word [bp+4]
		push	word [bx+11]
		call	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
..@j13150:
..@j13145:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RTLEVENTSETEVENT$PRTLEVENT
EXTERN	FPC_INTERLOCKEDDECREMENT
