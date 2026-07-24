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
	GLOBAL SYSTEM_$$_TRUNCATE$file
SYSTEM_$$_TRUNCATE$file:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24814
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24815
..@j24814:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24815:
		cmp	word [bx],0
		jne	..@j24812
		jmp	..@j24813
..@j24812:
		jmp	..@j24810
..@j24813:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jl	..@j24817
		test	ax,ax
		jg	..@j24819
		cmp	dx,-10318
		jb	..@j24817
..@j24819:
		test	ax,ax
		jl	..@j24818
		test	ax,ax
		jg	..@j24820
		cmp	dx,-10317
		jbe	..@j24818
..@j24820:
		jmp	..@j24817
..@j24818:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_FILEPOS$file$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		mov	bx,word [bp+4]
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
		call	SYSTEM_$$_DO_TRUNCATE$WORD$LONGINT
		jmp	..@j24816
..@j24817:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24835
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24836
..@j24835:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24836:
		mov	word [bx],103
..@j24816:
..@j24810:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_TRUNCATE$WORD$LONGINT
EXTERN	fpc_mul_int64
EXTERN	SYSTEM_$$_FILEPOS$file$$INT64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
