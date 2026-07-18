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
	GLOBAL SYSTEM_$$_FILEPOS$file$$INT64
SYSTEM_$$_FILEPOS$file$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24711
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24712
..@j24711:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24712:
		cmp	word [bx],0
		jne	..@j24709
		jmp	..@j24710
..@j24709:
		jmp	..@j24705
..@j24710:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24716
		cmp	dx,-10319
		je	..@j24715
..@j24716:
		test	ax,ax
		jl	..@j24714
		test	ax,ax
		jg	..@j24717
		cmp	dx,-10318
		jb	..@j24714
..@j24717:
		test	ax,ax
		jl	..@j24715
		test	ax,ax
		jg	..@j24718
		cmp	dx,-10317
		jbe	..@j24715
..@j24718:
		jmp	..@j24714
..@j24715:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_FILEPOS$WORD$$LONGINT
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
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j24713
..@j24714:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24729
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24730
..@j24729:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24730:
		mov	word [bx],103
..@j24713:
..@j24705:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_div_longint
EXTERN	SYSTEM_$$_DO_FILEPOS$WORD$$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
