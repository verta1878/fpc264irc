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
	GLOBAL SYSTEM_$$_REWRITE$file
SYSTEM_$$_REWRITE$file:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24471
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24472
..@j24471:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24472:
		cmp	word [bx],0
		jne	..@j24469
		jmp	..@j24470
..@j24469:
		jmp	..@j24467
..@j24470:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,128
		push	ax
		call	SYSTEM_$$_REWRITE$file$LONGINT
..@j24467:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_REWRITE$file$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
