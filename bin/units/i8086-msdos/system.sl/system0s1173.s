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
	GLOBAL SYSTEM_$$_CLOSE$file
SYSTEM_$$_CLOSE$file:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24841
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24842
..@j24841:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24842:
		cmp	word [bx],0
		jne	..@j24839
		jmp	..@j24840
..@j24839:
		jmp	..@j24837
..@j24840:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24846
		cmp	dx,-10319
		je	..@j24845
..@j24846:
		test	ax,ax
		jl	..@j24844
		test	ax,ax
		jg	..@j24847
		cmp	dx,-10318
		jb	..@j24844
..@j24847:
		test	ax,ax
		jl	..@j24845
		test	ax,ax
		jg	..@j24848
		cmp	dx,-10317
		jbe	..@j24845
..@j24848:
		jmp	..@j24844
..@j24845:
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_CLOSE$WORD
		mov	bx,word [bp+4]
		mov	word [bx+2],-10320
		mov	word [bx+4],0
		jmp	..@j24843
..@j24844:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24855
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24856
..@j24855:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24856:
		mov	word [bx],103
..@j24843:
..@j24837:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_CLOSE$WORD
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
