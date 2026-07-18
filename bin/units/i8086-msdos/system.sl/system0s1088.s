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
	GLOBAL fpc_write_text_char
fpc_write_text_char:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22662
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22663
..@j22662:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22663:
		cmp	word [bx],0
		jne	..@j22660
		jmp	..@j22661
..@j22660:
		jmp	..@j22658
..@j22661:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22664
		cmp	dx,-10318
		jne	..@j22664
		jmp	..@j22665
..@j22664:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22667
		cmp	dx,-10320
		jne	..@j22667
		jmp	..@j22666
..@j22666:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22670
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22671
..@j22670:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22671:
		mov	word [bx],103
		jmp	..@j22672
..@j22667:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22675
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22676
..@j22675:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22676:
		mov	word [bx],105
..@j22672:
		jmp	..@j22658
..@j22665:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jg	..@j22677
		jl	..@j22678
		cmp	dx,1
		ja	..@j22677
		jmp	..@j22678
..@j22677:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
..@j22678:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+6]
		jge	..@j22683
		jmp	..@j22684
..@j22683:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+18]
		call	ax
..@j22684:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	al,byte [bp+4]
		mov	byte [bx+si],al
		mov	bx,word [bp+6]
		inc	word [bx+10]
..@j22658:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
