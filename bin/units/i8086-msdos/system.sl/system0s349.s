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
	GLOBAL fpc_mod_int64
fpc_mod_int64:
	GLOBAL FPC_MOD_INT64
FPC_MOD_INT64:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		mov	ax,word [bp+16]
		mov	dx,word [bp+18]
		cmp	dx,0
		jne	..@j8418
		cmp	ax,0
		jne	..@j8418
		cmp	bx,0
		jne	..@j8418
		cmp	cx,0
		jne	..@j8418
		jmp	..@j8417
..@j8417:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j8418:
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		mov	bx,word [bp+18]
		cmp	bx,0
		jl	..@j8425
		jg	..@j8426
		cmp	cx,0
		jb	..@j8425
		ja	..@j8426
		cmp	dx,0
		jb	..@j8425
		ja	..@j8426
		cmp	ax,0
		jb	..@j8425
		jmp	..@j8426
..@j8425:
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
		jmp	..@j8429
..@j8426:
		lea	di,[bp-26]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
..@j8429:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j8432
		jg	..@j8433
		cmp	cx,0
		jb	..@j8432
		ja	..@j8433
		cmp	dx,0
		jb	..@j8432
		ja	..@j8433
		cmp	ax,0
		jb	..@j8432
		jmp	..@j8433
..@j8432:
		mov	byte [bp-9],1
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
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		mov	word [bp-30],cx
		mov	word [bp-28],bx
		jmp	..@j8438
..@j8433:
		mov	byte [bp-9],0
		lea	di,[bp-34]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j8438:
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		push	word [bp-32]
		push	word [bp-34]
		call	fpc_mod_qword
		mov	word [bp-18],dx
		mov	word [bp-16],cx
		mov	word [bp-14],bx
		mov	word [bp-12],ax
		cmp	byte [bp-9],0
		jne	..@j8449
		jmp	..@j8450
..@j8449:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		jmp	..@j8453
..@j8450:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-18]
		cld
		mov	cx,4
		rep
		movsw
..@j8453:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_mod_qword
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
