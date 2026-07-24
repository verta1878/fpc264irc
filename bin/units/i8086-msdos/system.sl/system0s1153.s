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
	GLOBAL SYSTEM_$$_RESET$file$LONGINT
SYSTEM_$$_RESET$file$LONGINT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24434
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24435
..@j24434:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24435:
		cmp	word [bx],0
		jne	..@j24432
		jmp	..@j24433
..@j24432:
		jmp	..@j24430
..@j24433:
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24440
		cmp	dx,-10320
		je	..@j24439
..@j24440:
		test	ax,ax
		jne	..@j24441
		cmp	dx,-10319
		je	..@j24438
..@j24441:
		test	ax,ax
		jl	..@j24437
		test	ax,ax
		jg	..@j24442
		cmp	dx,-10318
		jb	..@j24437
..@j24442:
		test	ax,ax
		jl	..@j24438
		test	ax,ax
		jg	..@j24443
		cmp	dx,-10317
		jbe	..@j24438
..@j24443:
		jmp	..@j24437
..@j24438:
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		jmp	..@j24436
..@j24439:
		jmp	..@j24436
..@j24437:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24448
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24449
..@j24448:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24449:
		mov	word [bx],102
		jmp	..@j24430
..@j24436:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jne	..@j24451
		cmp	dx,0
		jne	..@j24451
		jmp	..@j24450
..@j24450:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24454
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24455
..@j24454:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24455:
		mov	word [bx],2
		jmp	..@j24456
..@j24451:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+56]
		push	ax
		mov	ax,0
		mov	dl,byte [TC_$SYSTEM_$$_FILEMODE]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	SYSTEM_$$_DO_OPEN$formal$PWIDECHAR$LONGINT$BOOLEAN
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
..@j24456:
..@j24430:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_DO_OPEN$formal$PWIDECHAR$LONGINT$BOOLEAN
EXTERN	TC_$SYSTEM_$$_FILEMODE
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
