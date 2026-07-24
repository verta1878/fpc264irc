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
	GLOBAL SYSTEM_$$_SEEK$file$INT64
SYSTEM_$$_SEEK$file$INT64:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24788
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24789
..@j24788:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24789:
		cmp	word [bx],0
		jne	..@j24786
		jmp	..@j24787
..@j24786:
		jmp	..@j24784
..@j24787:
		mov	bx,word [bp+12]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24793
		cmp	dx,-10319
		je	..@j24792
..@j24793:
		test	ax,ax
		jl	..@j24791
		test	ax,ax
		jg	..@j24794
		cmp	dx,-10318
		jb	..@j24791
..@j24794:
		test	ax,ax
		jl	..@j24792
		test	ax,ax
		jg	..@j24795
		cmp	dx,-10317
		jbe	..@j24792
..@j24795:
		jmp	..@j24791
..@j24792:
		mov	bx,word [bp+12]
		push	word [bx]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+12]
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
		call	SYSTEM_$$_DO_SEEK$WORD$LONGINT
		jmp	..@j24790
..@j24791:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24808
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24809
..@j24808:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24809:
		mov	word [bx],103
..@j24790:
..@j24784:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_DO_SEEK$WORD$LONGINT
EXTERN	fpc_mul_int64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
