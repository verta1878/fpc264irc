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
	GLOBAL SYSTEM_$$_FLOAT_RAISE$TFPUEXCEPTIONMASK
SYSTEM_$$_FLOAT_RAISE$TFPUEXCEPTIONMASK:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j2530
		push	word [U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_FLAGS+2]
		push	word [U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_FLAGS]
		call	ax
		jmp	..@j2531
..@j2530:
		mov	ax,word U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_FLAGS+2
..@j2531:
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		mov	dl,byte [bp+4]
		or	al,dl
		mov	bx,word [bp-2]
		mov	byte [bx],al
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j2536
		push	word [U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_MASK+2]
		push	word [U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_MASK]
		call	ax
		mov	bx,ax
		jmp	..@j2537
..@j2536:
		mov	bx,word U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_MASK+2
..@j2537:
		mov	si,word [bp-2]
		mov	dl,byte [bx]
		mov	al,byte [si]
		not	dl
		and	dl,al
		mov	byte [bp-3],dl
		test	byte [bp-3],1
		jne	..@j2538
		jmp	..@j2539
..@j2538:
		mov	ax,0
		push	ax
		mov	ax,207
		push	ax
		call	FPC_HANDLEERROR
		jmp	..@j2542
..@j2539:
		test	byte [bp-3],4
		jne	..@j2543
		jmp	..@j2544
..@j2543:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	FPC_HANDLEERROR
		jmp	..@j2547
..@j2544:
		test	byte [bp-3],8
		jne	..@j2548
		jmp	..@j2549
..@j2548:
		mov	ax,0
		push	ax
		mov	ax,205
		push	ax
		call	FPC_HANDLEERROR
		jmp	..@j2552
..@j2549:
		test	byte [bp-3],16
		jne	..@j2553
		jmp	..@j2554
..@j2553:
		mov	ax,0
		push	ax
		mov	ax,206
		push	ax
		call	FPC_HANDLEERROR
		jmp	..@j2557
..@j2554:
		test	byte [bp-3],32
		jne	..@j2558
		jmp	..@j2559
..@j2558:
		mov	ax,0
		push	ax
		mov	ax,207
		push	ax
		call	FPC_HANDLEERROR
..@j2559:
..@j2557:
..@j2552:
..@j2547:
..@j2542:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_HANDLEERROR
EXTERN	U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_MASK
EXTERN	U_$SYSTEM_$$_SOFTFLOAT_EXCEPTION_FLAGS
EXTERN	FPC_THREADVAR_RELOCATE
