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
	GLOBAL SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		cmp	word [bp+6],0
		jl	..@j473
		jmp	..@j475
..@j475:
		mov	dx,word [bp-4]
		mov	ax,word [bp+6]
		add	ax,dx
		cmp	ax,word [bp-4]
		jb	..@j473
		jmp	..@j474
..@j473:
		mov	word [bp-6],-2
		jmp	..@j478
..@j474:
		mov	dx,word [bp-4]
		mov	ax,word [bp+6]
		add	ax,dx
		mov	word [bp-6],ax
..@j478:
		jmp	..@j482
	ALIGN 2
..@j481:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		cmp	al,byte [bp+4]
		je	..@j484
		jmp	..@j485
..@j484:
		mov	ax,word [bp+8]
		mov	dx,word [bp-4]
		sub	dx,ax
		mov	word [bp-2],dx
		jmp	..@j469
..@j485:
		inc	word [bp-4]
..@j482:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j481
		jmp	..@j483
..@j483:
		mov	word [bp-2],-1
..@j469:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
