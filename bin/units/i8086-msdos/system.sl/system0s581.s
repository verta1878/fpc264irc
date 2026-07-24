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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j14604
		jmp	..@j14605
..@j14604:
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14605:
		mov	sp,bp
		pop	bp
		ret	2
