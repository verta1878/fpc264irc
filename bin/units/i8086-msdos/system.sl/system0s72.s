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
	GLOBAL SYSTEM_$$_COMPARECHAR0$formal$formal$SMALLINT$$SMALLINT
SYSTEM_$$_COMPARECHAR0$formal$formal$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-10],0
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-8],ax
		jmp	..@j803
	ALIGN 2
..@j802:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp-6]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jl	..@j807
		jmp	..@j808
..@j807:
		mov	word [bp-2],-1
		jmp	..@j792
		jmp	..@j811
..@j808:
		cmp	word [bp-10],0
		jg	..@j812
		jmp	..@j813
..@j812:
		mov	word [bp-2],1
		jmp	..@j792
..@j813:
..@j811:
		mov	bx,word [bp-4]
		cmp	byte [bx],0
		je	..@j816
		jmp	..@j818
..@j818:
		mov	bx,word [bp-6]
		cmp	byte [bx],0
		je	..@j816
		jmp	..@j817
..@j816:
		mov	word [bp-2],0
		jmp	..@j792
..@j817:
		inc	word [bp-6]
		inc	word [bp-4]
..@j803:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jb	..@j802
		jmp	..@j804
..@j804:
		mov	word [bp-2],0
..@j792:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
