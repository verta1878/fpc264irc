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
	GLOBAL fpc_div_int64
fpc_div_int64:
	GLOBAL FPC_DIV_INT64
FPC_DIV_INT64:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		mov	ax,word [bp+16]
		mov	dx,word [bp+18]
		cmp	dx,0
		jne	..@j8371
		cmp	ax,0
		jne	..@j8371
		cmp	bx,0
		jne	..@j8371
		cmp	cx,0
		jne	..@j8371
		jmp	..@j8370
..@j8370:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j8371:
		mov	byte [bp-9],0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j8380
		jg	..@j8381
		cmp	cx,0
		jb	..@j8380
		ja	..@j8381
		cmp	dx,0
		jb	..@j8380
		ja	..@j8381
		cmp	ax,0
		jb	..@j8380
		jmp	..@j8381
..@j8380:
		cmp	byte [bp-9],0
		mov	al,0
		jne	..@j8384
		inc	ax
..@j8384:
		mov	byte [bp-9],al
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		jmp	..@j8387
..@j8381:
		lea	di,[bp-18]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j8387:
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		mov	bx,word [bp+18]
		cmp	bx,0
		jl	..@j8390
		jg	..@j8391
		cmp	cx,0
		jb	..@j8390
		ja	..@j8391
		cmp	dx,0
		jb	..@j8390
		ja	..@j8391
		cmp	ax,0
		jb	..@j8390
		jmp	..@j8391
..@j8390:
		cmp	byte [bp-9],0
		mov	al,0
		jne	..@j8394
		inc	ax
..@j8394:
		mov	byte [bp-9],al
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		mov	bx,word [bp+18]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],bx
		jmp	..@j8397
..@j8391:
		lea	di,[bp-26]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
..@j8397:
		cmp	byte [bp-9],0
		jne	..@j8400
		jmp	..@j8401
..@j8400:
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		call	fpc_div_qword
		not	bx
		not	ax
		not	cx
		neg	dx
		sbb	cx,-1
		sbb	bx,-1
		sbb	ax,-1
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j8408
..@j8401:
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		call	fpc_div_qword
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
..@j8408:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_div_qword
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
