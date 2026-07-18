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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEINTEGER$INT64
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEINTEGER$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,-1
		jg	..@j21366
		jl	..@j21365
		cmp	ax,-1
		ja	..@j21366
		jb	..@j21365
		cmp	bx,-1
		ja	..@j21366
		jb	..@j21365
		cmp	cx,-128
		jae	..@j21366
		jmp	..@j21365
..@j21366:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j21364
		jg	..@j21365
		cmp	cx,0
		jb	..@j21364
		ja	..@j21365
		cmp	dx,0
		jb	..@j21364
		ja	..@j21365
		cmp	ax,127
		jbe	..@j21364
		jmp	..@j21365
..@j21364:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		mov	al,byte [bp+4]
		mov	byte [bp-1],al
		push	word [bp+12]
		lea	ax,[bp-1]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		jmp	..@j21379
..@j21365:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	cx,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,-1
		jg	..@j21382
		jl	..@j21381
		cmp	cx,-1
		ja	..@j21382
		jb	..@j21381
		cmp	ax,-1
		ja	..@j21382
		jb	..@j21381
		cmp	bx,-32768
		jae	..@j21382
		jmp	..@j21381
..@j21382:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j21380
		jg	..@j21381
		cmp	cx,0
		jb	..@j21380
		ja	..@j21381
		cmp	dx,0
		jb	..@j21380
		ja	..@j21381
		cmp	ax,32767
		jbe	..@j21380
		jmp	..@j21381
..@j21380:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		push	word [bp+12]
		push	word [bp-4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEWORD$WORD
		jmp	..@j21393
..@j21381:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,-1
		jg	..@j21396
		jl	..@j21395
		cmp	cx,-1
		ja	..@j21396
		jb	..@j21395
		cmp	dx,-32768
		ja	..@j21396
		jb	..@j21395
		cmp	ax,0
		jae	..@j21396
		jmp	..@j21395
..@j21396:
		mov	ax,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jl	..@j21394
		jg	..@j21395
		cmp	dx,0
		jb	..@j21394
		ja	..@j21395
		cmp	bx,32767
		jb	..@j21394
		ja	..@j21395
		cmp	ax,-1
		jbe	..@j21394
		jmp	..@j21395
..@j21394:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		push	word [bp+12]
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
		jmp	..@j21407
..@j21395:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,19
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEQWORD$QWORD
..@j21407:
..@j21393:
..@j21379:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEQWORD$QWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEWORD$WORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
