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
	GLOBAL fpc_write_text_shortstr_iso
fpc_write_text_shortstr_iso:
	GLOBAL FPC_WRITE_TEXT_SHORTSTR_ISO
FPC_WRITE_TEXT_SHORTSTR_ISO:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21794
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21795
..@j21794:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21795:
		cmp	word [bx],0
		jne	..@j21792
		jmp	..@j21793
..@j21792:
		jmp	..@j21790
..@j21793:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21800
		cmp	dx,-10319
		je	..@j21799
..@j21800:
		test	ax,ax
		jne	..@j21801
		cmp	dx,-10318
		je	..@j21798
..@j21801:
		jmp	..@j21797
..@j21798:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,-1
		jne	..@j21803
		cmp	dx,-1
		jne	..@j21803
		jmp	..@j21802
..@j21802:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp+8],dx
		mov	word [bp+10],ax
..@j21803:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		cmp	ax,word [bp+10]
		jl	..@j21806
		jg	..@j21807
		cmp	dx,word [bp+8]
		jb	..@j21806
		jmp	..@j21807
		jmp	..@j21807
..@j21806:
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
		jmp	..@j21818
..@j21807:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
..@j21818:
		jmp	..@j21796
..@j21799:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21827
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21828
..@j21827:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21828:
		mov	word [bx],105
		jmp	..@j21796
..@j21797:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21831
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21832
..@j21831:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21832:
		mov	word [bx],103
..@j21796:
..@j21790:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
