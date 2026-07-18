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
	GLOBAL SYSTEM_$$_INDEXCHAR0$formal$SMALLINT$CHAR$$SMALLINT
SYSTEM_$$_INDEXCHAR0$formal$SMALLINT$CHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		cmp	word [bp+6],0
		jl	..@j775
		jmp	..@j776
..@j775:
		mov	word [bp-6],-2
		jmp	..@j779
..@j776:
		mov	dx,word [bp-4]
		mov	ax,word [bp+6]
		add	ax,dx
		mov	word [bp-6],ax
..@j779:
		jmp	..@j783
	ALIGN 2
..@j782:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		cmp	al,byte [bp+4]
		je	..@j785
		jmp	..@j786
..@j785:
		mov	ax,word [bp+8]
		mov	dx,word [bp-4]
		sub	dx,ax
		mov	word [bp-2],dx
		jmp	..@j771
..@j786:
		inc	word [bp-4]
..@j783:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j789
		jmp	..@j784
..@j789:
		mov	bx,word [bp-4]
		cmp	byte [bx],0
		jne	..@j782
		jmp	..@j784
..@j784:
		mov	word [bp-2],-1
..@j771:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
