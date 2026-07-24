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
	GLOBAL fpc_char_copy
fpc_char_copy:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],1
		je	..@j3877
		jmp	..@j3876
..@j3877:
		cmp	word [bp+4],0
		jg	..@j3875
		jmp	..@j3876
..@j3875:
		mov	bx,word [bp+10]
		mov	byte [bx],1
		mov	al,byte [bp+8]
		mov	byte [bx+1],al
		jmp	..@j3880
..@j3876:
		mov	bx,word [bp+10]
		mov	byte [bx],0
..@j3880:
		mov	sp,bp
		pop	bp
		ret	8
