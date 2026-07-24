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
	GLOBAL fpc_write_text_pchar_as_array_iso
fpc_write_text_pchar_as_array_iso:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21888
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21889
..@j21888:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21889:
		cmp	word [bx],0
		jne	..@j21886
		jmp	..@j21887
..@j21886:
		jmp	..@j21884
..@j21887:
		mov	bx,word [bp+10]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21894
		cmp	dx,-10319
		je	..@j21893
..@j21894:
		test	ax,ax
		jne	..@j21895
		cmp	dx,-10318
		je	..@j21892
..@j21895:
		jmp	..@j21891
..@j21892:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		cmp	byte [bp+4],0
		jne	..@j21898
		jmp	..@j21899
..@j21898:
		mov	ax,word [bp-6]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,-1
		jne	..@j21909
		cmp	dx,-1
		jne	..@j21909
		jmp	..@j21908
..@j21908:
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j21909:
		jmp	..@j21912
..@j21899:
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j21912:
		mov	dx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,-1
		jne	..@j21916
		cmp	dx,-1
		jne	..@j21916
		jmp	..@j21915
..@j21915:
		mov	ax,word [bp-4]
		mov	word [bp+12],ax
		mov	ax,word [bp-2]
		mov	word [bp+14],ax
..@j21916:
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		cmp	dx,word [bp-2]
		jg	..@j21919
		jl	..@j21920
		cmp	ax,word [bp-4]
		ja	..@j21919
		jmp	..@j21920
		jmp	..@j21920
..@j21919:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		jmp	..@j21931
..@j21920:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		push	word [bp+12]
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
..@j21931:
		jmp	..@j21890
..@j21893:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21940
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21941
..@j21940:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21941:
		mov	word [bx],105
		jmp	..@j21890
..@j21891:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21944
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21945
..@j21944:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21945:
		mov	word [bx],103
..@j21890:
..@j21884:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
