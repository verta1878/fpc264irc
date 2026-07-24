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
	GLOBAL SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT
SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		lea	ax,[bp-8]
		push	ax
		call	SYSTEM_$$_BLOCKWRITE$file$formal$INT64$INT64
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24590
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24591
..@j24590:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24591:
		cmp	word [bx],0
		je	..@j24589
		jmp	..@j24587
..@j24589:
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		cmp	bx,word [bp-2]
		jg	..@j24588
		jl	..@j24587
		cmp	ax,word [bp-4]
		ja	..@j24588
		jb	..@j24587
		cmp	si,word [bp-6]
		ja	..@j24588
		jb	..@j24587
		cmp	dx,word [bp-8]
		ja	..@j24588
		jmp	..@j24587
		jmp	..@j24587
..@j24588:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j24586
		jl	..@j24587
		cmp	dx,0
		ja	..@j24586
		jmp	..@j24587
..@j24586:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24594
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24595
..@j24594:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24595:
		mov	word [bx],101
..@j24587:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_BLOCKWRITE$file$formal$INT64$INT64
