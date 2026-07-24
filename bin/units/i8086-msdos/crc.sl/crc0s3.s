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
	GLOBAL CRC_$$_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
CRC_$$_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+8],0
		je	..@j9
		jmp	..@j10
..@j9:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j7
..@j10:
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		not	ax
		not	dx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		jmp	..@j16
	ALIGN 2
..@j15:
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j20:
		shr	dx,1
		rcr	ax,1
		loop	..@j20
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j23:
		shr	dx,1
		rcr	ax,1
		loop	..@j23
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j26:
		shr	dx,1
		rcr	ax,1
		loop	..@j26
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j29:
		shr	dx,1
		rcr	ax,1
		loop	..@j29
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j32:
		shr	dx,1
		rcr	ax,1
		loop	..@j32
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j35:
		shr	dx,1
		rcr	ax,1
		loop	..@j35
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j38:
		shr	dx,1
		rcr	ax,1
		loop	..@j38
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j41:
		shr	dx,1
		rcr	ax,1
		loop	..@j41
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		sub	word [bp+4],8
		sbb	word [bp+6],0
..@j16:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		ja	..@j15
		jb	..@j17
		cmp	dx,8
		jae	..@j15
		jmp	..@j17
..@j17:
		jmp	..@j43
	ALIGN 2
..@j42:
		mov	bx,word [bp+8]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		xor	bx,ax
		xor	dx,cx
		and	bx,255
		mov	dx,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,8
..@j47:
		shr	dx,1
		rcr	ax,1
		loop	..@j47
		mov	cx,word [TC_$CRC_$$_CRC32_TABLE+bx]
		mov	bx,word [TC_$CRC_$$_CRC32_TABLE+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		inc	word [bp+8]
		sub	word [bp+4],1
		sbb	word [bp+6],0
..@j43:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		ja	..@j42
		jb	..@j44
		cmp	ax,0
		ja	..@j42
		jmp	..@j44
..@j44:
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		not	ax
		not	dx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j7:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	TC_$CRC_$$_CRC32_TABLE
