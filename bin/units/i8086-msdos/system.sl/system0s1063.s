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
	GLOBAL fpc_write_text_pchar_as_pointer
fpc_write_text_pchar_as_pointer:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		je	..@j21948
		jmp	..@j21950
..@j21950:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21951
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21952
..@j21951:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21952:
		cmp	word [bx],0
		jne	..@j21948
		jmp	..@j21949
..@j21948:
		jmp	..@j21946
..@j21949:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21957
		cmp	dx,-10319
		je	..@j21956
..@j21957:
		test	ax,ax
		jne	..@j21958
		cmp	dx,-10318
		je	..@j21955
..@j21958:
		jmp	..@j21954
..@j21955:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,word [bp-2]
		jg	..@j21963
		jl	..@j21964
		cmp	dx,word [bp-4]
		ja	..@j21963
		jmp	..@j21964
		jmp	..@j21964
..@j21963:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
..@j21964:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		jmp	..@j21953
..@j21956:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21977
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21978
..@j21977:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21978:
		mov	word [bx],105
		jmp	..@j21953
..@j21954:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21981
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21982
..@j21981:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21982:
		mov	word [bx],103
..@j21953:
..@j21946:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
