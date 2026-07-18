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
	GLOBAL MACPAS_$$_BSR$QWORD$LONGWORD$$QWORD
MACPAS_$$_BSR$QWORD$LONGWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	si,word [bp+8]
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	bx,word [bp+14]
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j106
		xor	si,si
		xor	ax,ax
		xor	dx,dx
		xor	bx,bx
		jmp	..@j108
..@j106:
		test	cx,cx
		je	..@j108
..@j107:
		shr	bx,1
		rcr	dx,1
		rcr	ax,1
		rcr	si,1
		loop	..@j107
..@j108:
		mov	word [bp-8],si
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],bx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	12
