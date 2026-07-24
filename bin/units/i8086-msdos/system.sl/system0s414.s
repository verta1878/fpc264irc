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
	GLOBAL SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		cmp	word [bx],0
		je	..@j10692
		jmp	..@j10693
..@j10692:
		jmp	..@j10690
..@j10693:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx-8]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		je	..@j10696
		jmp	..@j10697
..@j10696:
		jmp	..@j10690
..@j10697:
		mov	ax,word [bp-2]
		mov	dx,word [bp-2]
		sub	dx,1
		jbe	..@j10705
		jmp	..@j10704
..@j10705:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j10703
..@j10704:
..@j10703:
		mov	word [bp-6],ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+6]
		sub	ax,1
		jbe	..@j10715
		jmp	..@j10714
..@j10715:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j10713
..@j10714:
..@j10713:
		mov	word [bp-4],dx
		cmp	byte [bp+4],0
		jne	..@j10720
		jmp	..@j10719
..@j10720:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jne	..@j10718
		jmp	..@j10719
..@j10718:
		mov	byte [bp+4],1
		jmp	..@j10721
..@j10719:
		mov	byte [bp+4],0
..@j10721:
		cmp	byte [bp+4],0
		je	..@j10724
		jmp	..@j10723
..@j10724:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		cmp	word [bx-4],1
		je	..@j10722
		jmp	..@j10723
..@j10722:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp+6]
		mov	word [bx-8],ax
		jmp	..@j10727
..@j10723:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_INTERNALSETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j10727:
..@j10690:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_INTERNALSETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
