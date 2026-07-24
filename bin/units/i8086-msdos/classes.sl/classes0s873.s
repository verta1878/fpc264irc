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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEUINT64$QWORD
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEUINT64$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jb	..@j21418
		ja	..@j21419
		cmp	ax,0
		jb	..@j21418
		ja	..@j21419
		cmp	bx,0
		jb	..@j21418
		ja	..@j21419
		cmp	cx,127
		jbe	..@j21418
		jmp	..@j21419
..@j21418:
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
		jmp	..@j21432
..@j21419:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jb	..@j21433
		ja	..@j21434
		cmp	dx,0
		jb	..@j21433
		ja	..@j21434
		cmp	ax,0
		jb	..@j21433
		ja	..@j21434
		cmp	bx,32767
		jbe	..@j21433
		jmp	..@j21434
..@j21433:
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
		jmp	..@j21445
..@j21434:
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jb	..@j21446
		ja	..@j21447
		cmp	dx,0
		jb	..@j21446
		ja	..@j21447
		cmp	ax,32767
		jb	..@j21446
		ja	..@j21447
		cmp	bx,-1
		jbe	..@j21446
		jmp	..@j21447
..@j21446:
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
		jmp	..@j21458
..@j21447:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,22
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEQWORD$QWORD
..@j21458:
..@j21445:
..@j21432:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEQWORD$QWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEWORD$WORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
