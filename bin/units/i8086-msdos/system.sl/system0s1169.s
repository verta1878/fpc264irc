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
	GLOBAL SYSTEM_$$_FILESIZE$file$$INT64
SYSTEM_$$_FILESIZE$file$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24737
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24738
..@j24737:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24738:
		cmp	word [bx],0
		jne	..@j24735
		jmp	..@j24736
..@j24735:
		jmp	..@j24731
..@j24736:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24742
		cmp	dx,-10319
		je	..@j24741
..@j24742:
		test	ax,ax
		jl	..@j24740
		test	ax,ax
		jg	..@j24743
		cmp	dx,-10318
		jb	..@j24740
..@j24743:
		test	ax,ax
		jl	..@j24741
		test	ax,ax
		jg	..@j24744
		cmp	dx,-10317
		jbe	..@j24741
..@j24744:
		jmp	..@j24740
..@j24741:
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jg	..@j24745
		jmp	..@j24746
..@j24745:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_FILESIZE$WORD$$LONGINT
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
..@j24746:
		jmp	..@j24739
..@j24740:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24757
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24758
..@j24757:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24758:
		mov	word [bx],103
..@j24739:
..@j24731:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_div_longint
EXTERN	SYSTEM_$$_DO_FILESIZE$WORD$$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
