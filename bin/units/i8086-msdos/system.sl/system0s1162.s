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
	GLOBAL SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24602
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24603
..@j24602:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24603:
		cmp	word [bx],0
		jne	..@j24600
		jmp	..@j24601
..@j24600:
		jmp	..@j24596
..@j24601:
		mov	bx,word [bp+16]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24608
		cmp	dx,-10319
		je	..@j24606
..@j24608:
		test	ax,ax
		jne	..@j24609
		cmp	dx,-10318
		je	..@j24607
..@j24609:
		test	ax,ax
		jne	..@j24610
		cmp	dx,-10317
		je	..@j24606
..@j24610:
		jmp	..@j24605
..@j24606:
		mov	bx,word [bp+16]
		mov	ax,word [bx+6]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+16]
		push	word [bx]
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+16]
		mov	ax,word [bx+6]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		push	si
		push	bx
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		push	cx
		push	dx
		call	SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
		push	dx
		push	ax
		call	fpc_div_longint
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	di,word [bp+4]
		mov	word [di],bx
		mov	word [di+2],si
		mov	word [di+4],ax
		mov	word [di+6],dx
		jmp	..@j24604
..@j24607:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24631
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24632
..@j24631:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24632:
		mov	word [bx],104
		jmp	..@j24604
..@j24605:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24635
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24636
..@j24635:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24636:
		mov	word [bx],103
..@j24604:
..@j24596:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	fpc_div_longint
EXTERN	SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
EXTERN	fpc_mul_int64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
