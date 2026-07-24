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
	GLOBAL CHARSET$_$LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP_$$_READBUFFER$crc3B0E2C3B
CHARSET$_$LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP_$$_READBUFFER$crc3B0E2C3B:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+10]
		mov	ax,word [bx-8]
		mov	dx,word [bx-6]
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		add	cx,ax
		adc	bx,dx
		mov	si,word [bp+10]
		mov	ax,word [si+4]
		cwd
		cmp	bx,dx
		jl	..@j646
		jg	..@j647
		cmp	cx,ax
		jbe	..@j646
		jmp	..@j647
..@j646:
		mov	byte [bp-1],1
		jmp	..@j648
..@j647:
		mov	byte [bp-1],0
..@j648:
		cmp	byte [bp-1],0
		je	..@j649
		jmp	..@j650
..@j649:
		jmp	..@j576
..@j650:
		mov	bx,word [bp+10]
		mov	ax,word [bx-4]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		add	word [bx-4],ax
		mov	bx,word [bp+10]
		mov	cx,word [bx-8]
		mov	bx,word [bx-6]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+10]
		mov	word [bx-8],ax
		mov	word [bx-6],dx
..@j576:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
