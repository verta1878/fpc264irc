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
	GLOBAL fpc_write_text_shortstr
fpc_write_text_shortstr:
	GLOBAL FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21762
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21763
..@j21762:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21763:
		cmp	word [bx],0
		jne	..@j21760
		jmp	..@j21761
..@j21760:
		jmp	..@j21758
..@j21761:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21768
		cmp	dx,-10319
		je	..@j21767
..@j21768:
		test	ax,ax
		jne	..@j21769
		cmp	dx,-10318
		je	..@j21766
..@j21769:
		jmp	..@j21765
..@j21766:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		cmp	ax,word [bp+10]
		jl	..@j21770
		jg	..@j21771
		cmp	dx,word [bp+8]
		jb	..@j21770
		jmp	..@j21771
		jmp	..@j21771
..@j21770:
		mov	ax,word [bp+6]
		push	ax
		mov	si,word [bp+4]
		mov	bx,0
		mov	dl,byte [si]
		mov	dh,0
		mov	ax,word [bp+8]
		mov	cx,word [bp+10]
		sub	ax,dx
		sbb	cx,bx
		push	cx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
..@j21771:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		jmp	..@j21764
..@j21767:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21784
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21785
..@j21784:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21785:
		mov	word [bx],105
		jmp	..@j21764
..@j21765:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21788
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21789
..@j21788:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21789:
		mov	word [bx],103
..@j21764:
..@j21758:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
