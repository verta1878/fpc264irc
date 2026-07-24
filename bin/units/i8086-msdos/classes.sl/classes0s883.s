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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j21730
		mov	bx,word [bx-2]
..@j21730:
		mov	word [bp-2],bx
		cmp	word [bp-2],255
		jg	..@j21731
		jmp	..@j21732
..@j21731:
		mov	word [bp-2],255
..@j21732:
		mov	al,byte [bp-2]
		mov	byte [bp-3],al
		push	word [bp+6]
		lea	ax,[bp-3]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	word [bp-2],0
		jg	..@j21743
		jmp	..@j21744
..@j21743:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
..@j21744:
		mov	sp,bp
		pop	bp
		ret	4
