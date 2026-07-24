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
	GLOBAL fpc_write_text_pchar_as_array
fpc_write_text_pchar_as_array:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21837
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21838
..@j21837:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21838:
		cmp	word [bx],0
		jne	..@j21835
		jmp	..@j21836
..@j21835:
		jmp	..@j21833
..@j21836:
		mov	bx,word [bp+10]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21843
		cmp	dx,-10319
		je	..@j21842
..@j21843:
		test	ax,ax
		jne	..@j21844
		cmp	dx,-10318
		je	..@j21841
..@j21844:
		jmp	..@j21840
..@j21841:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		cmp	byte [bp+4],0
		jne	..@j21847
		jmp	..@j21848
..@j21847:
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
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,-1
		jne	..@j21858
		cmp	ax,-1
		jne	..@j21858
		jmp	..@j21857
..@j21857:
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j21858:
		jmp	..@j21861
..@j21848:
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j21861:
		mov	dx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,word [bp-2]
		jg	..@j21864
		jl	..@j21865
		cmp	dx,word [bp-4]
		ja	..@j21864
		jmp	..@j21865
		jmp	..@j21865
..@j21864:
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
..@j21865:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		jmp	..@j21839
..@j21842:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21878
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21879
..@j21878:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21879:
		mov	word [bx],105
		jmp	..@j21839
..@j21840:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21882
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21883
..@j21882:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21883:
		mov	word [bx],103
..@j21839:
..@j21833:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
