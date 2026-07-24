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
	GLOBAL SYSTEM_$$_BLOCKWRITE$file$formal$INT64$INT64
SYSTEM_$$_BLOCKWRITE$file$formal$INT64$INT64:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24493
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24494
..@j24493:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24494:
		cmp	word [bx],0
		jne	..@j24491
		jmp	..@j24492
..@j24491:
		jmp	..@j24487
..@j24492:
		mov	bx,word [bp+16]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24499
		cmp	dx,-10319
		je	..@j24498
..@j24499:
		test	ax,ax
		jl	..@j24496
		test	ax,ax
		jg	..@j24500
		cmp	dx,-10318
		jb	..@j24496
..@j24500:
		test	ax,ax
		jl	..@j24497
		test	ax,ax
		jg	..@j24501
		cmp	dx,-10317
		jbe	..@j24497
..@j24501:
		jmp	..@j24496
..@j24497:
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
		call	SYSTEM_$$_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
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
		jmp	..@j24495
..@j24498:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24522
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24523
..@j24522:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24523:
		mov	word [bx],105
		jmp	..@j24495
..@j24496:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24526
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24527
..@j24526:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24527:
		mov	word [bx],103
..@j24495:
..@j24487:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	fpc_div_longint
EXTERN	SYSTEM_$$_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
EXTERN	fpc_mul_int64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
