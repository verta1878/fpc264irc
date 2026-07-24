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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j14593
		jmp	..@j14594
..@j14593:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j14594:
		cmp	word [bp+6],0
		jne	..@j14599
		jmp	..@j14598
..@j14599:
		cmp	word [bp+4],0
		jne	..@j14597
		jmp	..@j14598
..@j14597:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j14598:
		mov	sp,bp
		pop	bp
		ret	4
