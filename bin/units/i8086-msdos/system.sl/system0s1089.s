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
	GLOBAL fpc_write_text_char_iso
fpc_write_text_char_iso:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22693
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22694
..@j22693:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22694:
		cmp	word [bx],0
		jne	..@j22691
		jmp	..@j22692
..@j22691:
		jmp	..@j22689
..@j22692:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22695
		cmp	dx,-10318
		jne	..@j22695
		jmp	..@j22696
..@j22695:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j22698
		cmp	dx,-10320
		jne	..@j22698
		jmp	..@j22697
..@j22697:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22701
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22702
..@j22701:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22702:
		mov	word [bx],103
		jmp	..@j22703
..@j22698:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22706
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22707
..@j22706:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22707:
		mov	word [bx],105
..@j22703:
		jmp	..@j22689
..@j22696:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,-1
		jne	..@j22709
		cmp	ax,-1
		jne	..@j22709
		jmp	..@j22708
..@j22708:
		mov	word [bp+8],1
		mov	word [bp+10],0
..@j22709:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jg	..@j22712
		jl	..@j22713
		cmp	dx,1
		ja	..@j22712
		jmp	..@j22713
..@j22712:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
		jmp	..@j22718
..@j22713:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jl	..@j22719
		jg	..@j22720
		cmp	ax,1
		jb	..@j22719
		jmp	..@j22720
..@j22719:
		jmp	..@j22689
..@j22720:
..@j22718:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+6]
		jge	..@j22721
		jmp	..@j22722
..@j22721:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+18]
		call	ax
..@j22722:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	al,byte [bp+4]
		mov	byte [bx+si],al
		mov	bx,word [bp+6]
		inc	word [bx+10]
..@j22689:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
