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
	GLOBAL SYSTEM_$$_BLOCKREAD$file$formal$INT64
SYSTEM_$$_BLOCKREAD$file$formal$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+14]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24699
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24700
..@j24699:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24700:
		cmp	word [bx],0
		je	..@j24698
		jmp	..@j24696
..@j24698:
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		cmp	cx,word [bp+10]
		jl	..@j24697
		jg	..@j24696
		cmp	dx,word [bp+8]
		jb	..@j24697
		ja	..@j24696
		cmp	ax,word [bp+6]
		jb	..@j24697
		ja	..@j24696
		cmp	bx,word [bp+4]
		jb	..@j24697
		jmp	..@j24696
		jmp	..@j24696
..@j24697:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jg	..@j24695
		jl	..@j24696
		cmp	cx,0
		ja	..@j24695
		jb	..@j24696
		cmp	dx,0
		ja	..@j24695
		jb	..@j24696
		cmp	ax,0
		ja	..@j24695
		jmp	..@j24696
..@j24695:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24703
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24704
..@j24703:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24704:
		mov	word [bx],100
..@j24696:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
