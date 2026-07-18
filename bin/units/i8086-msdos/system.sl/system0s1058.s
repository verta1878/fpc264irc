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
	GLOBAL fpc_writeln_end
fpc_writeln_end:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21732
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21733
..@j21732:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21733:
		cmp	word [bx],0
		jne	..@j21730
		jmp	..@j21731
..@j21730:
		jmp	..@j21728
..@j21731:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21738
		cmp	dx,-10319
		je	..@j21737
..@j21738:
		test	ax,ax
		jne	..@j21739
		cmp	dx,-10318
		je	..@j21736
..@j21739:
		jmp	..@j21735
..@j21736:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+569]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+568]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j21746
		jmp	..@j21747
..@j21746:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		call	ax
..@j21747:
		jmp	..@j21734
..@j21737:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21752
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21753
..@j21752:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21753:
		mov	word [bx],105
		jmp	..@j21734
..@j21735:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21756
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21757
..@j21756:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21757:
		mov	word [bx],103
..@j21734:
..@j21728:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
