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
	GLOBAL SYSTEM_$$_SYSTRYRESIZEMEM$POINTER$WORD$$BOOLEAN
SYSTEM_$$_SYSTRYRESIZEMEM$POINTER$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	byte [bp-1],0
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx-2]
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		jne	..@j19438
		jmp	..@j19439
..@j19438:
		mov	ax,word [bp-4]
		and	ax,4080
		mov	word [bp-8],ax
		cmp	word [bp+4],526
		jbe	..@j19444
		jmp	..@j19443
..@j19444:
		mov	ax,word [bp+4]
		add	ax,17
		and	ax,-16
		cmp	ax,word [bp-8]
		jbe	..@j19442
		jmp	..@j19443
..@j19442:
		mov	byte [bp-1],1
		jmp	..@j19432
..@j19443:
		jmp	..@j19432
..@j19439:
		cmp	word [bp+4],264
		jb	..@j19447
		jmp	..@j19448
..@j19447:
		mov	byte [bp-1],0
		jmp	..@j19432
..@j19448:
		mov	ax,word [bp-4]
		and	ax,-16
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		add	ax,6
		add	ax,15
		and	ax,-16
		mov	word [bp+4],ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp+4]
		jae	..@j19457
		jmp	..@j19456
..@j19457:
		mov	ax,word [bp-8]
		mov	dx,0
		sub	ax,16
		sbb	dx,0
		cmp	ax,word [bp+4]
		jb	..@j19455
		jmp	..@j19456
..@j19455:
		mov	byte [bp-1],1
		jmp	..@j19432
..@j19456:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19462
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19463
..@j19462:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19463:
		mov	word [bp-12],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		sub	ax,6
		mov	word [bp-10],ax
		mov	bx,word [bp-10]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-12]
		jne	..@j19466
		jmp	..@j19467
..@j19466:
		jmp	..@j19432
..@j19467:
		mov	ax,word [bp-8]
		mov	word [bp-6],ax
		push	word [bp-10]
		call	SYSTEM_$$_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
		test	al,al
		jne	..@j19470
		jmp	..@j19471
..@j19470:
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		and	ax,-16
		mov	word [bp-8],ax
..@j19471:
		mov	ax,word [bp+4]
		cmp	ax,word [bp-8]
		ja	..@j19476
		jmp	..@j19477
..@j19476:
		mov	bx,word [bp-12]
		lea	bx,[bx+86]
		mov	ax,word [bp-8]
		mov	cx,0
		mov	dx,word [bp-6]
		mov	si,0
		sub	ax,dx
		sbb	cx,si
		add	word [bx+6],ax
		mov	ax,word [bx+6]
		cmp	ax,word [bx+2]
		ja	..@j19480
		jmp	..@j19481
..@j19480:
		mov	ax,word [bx+6]
		mov	word [bx+2],ax
..@j19481:
		jmp	..@j19432
		jmp	..@j19484
..@j19477:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+4]
		ja	..@j19485
		jmp	..@j19486
..@j19485:
		push	word [bp-10]
		push	word [bp+4]
		call	SYSTEM_$$_SPLIT_BLOCK$PMEMCHUNK_VAR$WORD$$WORD
		mov	word [bp-8],ax
..@j19486:
..@j19484:
		mov	bx,word [bp-12]
		lea	bx,[bx+86]
		mov	ax,word [bp-8]
		mov	cx,0
		mov	dx,word [bp-6]
		mov	si,0
		sub	ax,dx
		sbb	cx,si
		add	word [bx+6],ax
		mov	ax,word [bx+6]
		cmp	ax,word [bx+2]
		ja	..@j19495
		jmp	..@j19496
..@j19495:
		mov	ax,word [bx+6]
		mov	word [bx+2],ax
..@j19496:
		mov	byte [bp-1],1
..@j19432:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SPLIT_BLOCK$PMEMCHUNK_VAR$WORD$$WORD
EXTERN	SYSTEM_$$_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
