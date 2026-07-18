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
	GLOBAL MACPAS_$$_BTST$QWORD$LONGWORD$$BOOLEAN
MACPAS_$$_BTST$QWORD$LONGWORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	si,word [bp+12]
		mov	bx,word [bp+14]
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j161
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		xor	bx,bx
		jmp	..@j163
..@j161:
		test	cx,cx
		je	..@j163
..@j162:
		shr	bx,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j162
..@j163:
		and	ax,1
		mov	dx,0
		cmp	dx,0
		jne	..@j159
		cmp	ax,0
		jne	..@j159
		jmp	..@j160
..@j159:
		mov	byte [bp-1],1
		jmp	..@j164
..@j160:
		mov	byte [bp-1],0
..@j164:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	12
