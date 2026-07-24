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
	GLOBAL CRC_$$_CRC64$QWORD$PBYTE$LONGWORD$$QWORD
CRC_$$_CRC64$QWORD$PBYTE$LONGWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+8],0
		je	..@j56
		jmp	..@j57
..@j56:
		mov	word [bp-8],-1
		mov	word [bp-6],-1
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j54
..@j57:
		jmp	..@j61
	ALIGN 2
..@j60:
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
		mov	cl,3
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	di,word [bp+14]
		mov	si,word [bp+16]
		mov	cx,8
..@j66:
		shr	si,1
		rcr	di,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j66
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	word [bp+14],di
		mov	word [bp+16],si
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
		mov	cl,3
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	si,word [bp+14]
		mov	di,word [bp+16]
		mov	cx,8
..@j71:
		shr	di,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j71
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	word [bp+14],si
		mov	word [bp+16],di
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
		mov	cl,3
		shl	bx,cl
		mov	dx,word [bp+10]
		mov	si,word [bp+12]
		mov	ax,word [bp+14]
		mov	di,word [bp+16]
		mov	cx,8
..@j76:
		shr	di,1
		rcr	ax,1
		rcr	si,1
		rcr	dx,1
		loop	..@j76
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],dx
		mov	word [bp+12],si
		mov	word [bp+14],ax
		mov	word [bp+16],di
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
		mov	cl,3
		shl	bx,cl
		mov	di,word [bp+10]
		mov	dx,word [bp+12]
		mov	si,word [bp+14]
		mov	ax,word [bp+16]
		mov	cx,8
..@j81:
		shr	ax,1
		rcr	si,1
		rcr	dx,1
		rcr	di,1
		loop	..@j81
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],di
		mov	word [bp+12],dx
		mov	word [bp+14],si
		mov	word [bp+16],ax
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
		mov	cl,3
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	di,word [bp+14]
		mov	si,word [bp+16]
		mov	cx,8
..@j86:
		shr	si,1
		rcr	di,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j86
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	word [bp+14],di
		mov	word [bp+16],si
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
		mov	cl,3
		shl	bx,cl
		mov	di,word [bp+10]
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	si,word [bp+16]
		mov	cx,8
..@j91:
		shr	si,1
		rcr	dx,1
		rcr	ax,1
		rcr	di,1
		loop	..@j91
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],di
		mov	word [bp+12],ax
		mov	word [bp+14],dx
		mov	word [bp+16],si
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
		mov	cl,3
		shl	bx,cl
		mov	di,word [bp+10]
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	si,word [bp+16]
		mov	cx,8
..@j96:
		shr	si,1
		rcr	dx,1
		rcr	ax,1
		rcr	di,1
		loop	..@j96
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],di
		mov	word [bp+12],ax
		mov	word [bp+14],dx
		mov	word [bp+16],si
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
		mov	cl,3
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	si,word [bp+14]
		mov	di,word [bp+16]
		mov	cx,8
..@j101:
		shr	di,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j101
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	word [bp+14],si
		mov	word [bp+16],di
		inc	word [bp+8]
		sub	word [bp+4],8
		sbb	word [bp+6],0
..@j61:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		ja	..@j60
		jb	..@j62
		cmp	dx,8
		jae	..@j60
		jmp	..@j62
..@j62:
		jmp	..@j104
	ALIGN 2
..@j103:
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
		mov	cl,3
		shl	bx,cl
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	si,word [bp+14]
		mov	di,word [bp+16]
		mov	cx,8
..@j109:
		shr	di,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j109
		xor	ax,word [TC_$CRC_$$_CRC64_TABLE+bx]
		xor	dx,word [TC_$CRC_$$_CRC64_TABLE+bx+2]
		xor	si,word [TC_$CRC_$$_CRC64_TABLE+bx+4]
		xor	di,word [TC_$CRC_$$_CRC64_TABLE+bx+6]
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	word [bp+14],si
		mov	word [bp+16],di
		inc	word [bp+8]
		sub	word [bp+4],1
		sbb	word [bp+6],0
..@j104:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		ja	..@j103
		jb	..@j105
		cmp	ax,0
		ja	..@j103
		jmp	..@j105
..@j105:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+10]
		cld
		mov	cx,4
		rep
		movsw
..@j54:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	TC_$CRC_$$_CRC64_TABLE
