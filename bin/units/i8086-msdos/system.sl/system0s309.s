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
	GLOBAL SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_ADD_DIGIT$LONGWORD$QWORD$BYTE
SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_ADD_DIGIT$LONGWORD$QWORD$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,44
		mov	bx,word [bp+6]
		mov	si,word [bx]
		mov	dx,word [bx+2]
		mov	cx,0
		mov	ax,0
		mov	word [bp-8],si
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-8]
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		mov	ax,word [bp-2]
		mov	word [bp-34],ax
		mov	cx,3
..@j6511:
		shl	dx,1
		rcl	bx,1
		rcl	si,1
		rcl	word [bp-34],1
		loop	..@j6511
		add	dx,word [bp-8]
		adc	bx,word [bp-6]
		adc	si,word [bp-4]
		mov	ax,word [bp-34]
		adc	ax,word [bp-2]
		mov	word [bp-34],ax
		mov	cx,0
		mov	al,byte [bp+4]
		mov	byte [bp-28],al
		mov	byte [bp-27],0
		mov	di,0
		mov	ax,0
		add	dx,word [bp-28]
		adc	bx,cx
		adc	si,di
		adc	word [bp-34],ax
		mov	word [bp-32],dx
		mov	word [bp-24],bx
		mov	bx,si
		mov	si,word [bp-34]
		mov	cx,word [bp-8]
		mov	dx,word [bp-6]
		mov	di,word [bp-4]
		mov	ax,word [bp-2]
		add	cx,word [bp-32]
		adc	dx,word [bp-24]
		adc	di,bx
		adc	ax,si
		mov	word [bp-8],cx
		mov	word [bp-6],dx
		mov	word [bp-4],di
		mov	word [bp-2],ax
		mov	si,word [bp+8]
		mov	bx,word [si]
		mov	dx,word [si+2]
		mov	ax,0
		mov	cx,0
		mov	word [bp-16],bx
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		mov	word [bp-10],cx
		mov	bx,word [bp+6]
		mov	si,word [bx]
		mov	dx,word [bx+2]
		mov	di,word [bx+4]
		mov	ax,word [bx+6]
		mov	cx,32
..@j6518:
		shr	ax,1
		rcr	di,1
		rcr	dx,1
		rcr	si,1
		loop	..@j6518
		mov	word [bp-38],si
		mov	word [bp-36],dx
		mov	word [bp-38],si
		mov	word [bp-36],dx
		mov	dx,0
		mov	bx,0
		mov	ax,word [bp-16]
		mov	word [bp-18],ax
		mov	ax,word [bp-14]
		mov	si,word [bp-12]
		mov	di,word [bp-10]
		mov	cx,32
..@j6521:
		shl	word [bp-18],1
		rcl	ax,1
		rcl	si,1
		rcl	di,1
		loop	..@j6521
		mov	cx,word [bp-38]
		add	cx,word [bp-18]
		mov	word [bp-38],cx
		adc	word [bp-36],ax
		adc	dx,si
		adc	bx,di
		mov	ax,word [bp-38]
		mov	word [bp-16],ax
		mov	ax,word [bp-36]
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	word [bp-10],bx
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		mov	word [bp-40],ax
		mov	ax,word [bp-12]
		mov	word [bp-42],ax
		mov	ax,word [bp-10]
		mov	word [bp-44],ax
		mov	cx,3
..@j6524:
		shl	dx,1
		rcl	word [bp-40],1
		rcl	word [bp-42],1
		rcl	word [bp-44],1
		loop	..@j6524
		add	dx,word [bp-16]
		mov	ax,word [bp-40]
		adc	ax,word [bp-14]
		mov	word [bp-40],ax
		mov	ax,word [bp-42]
		adc	ax,word [bp-12]
		mov	word [bp-42],ax
		mov	ax,word [bp-44]
		adc	ax,word [bp-10]
		mov	word [bp-44],ax
		mov	ax,word [bp-8]
		mov	di,word [bp-6]
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		mov	cx,32
..@j6527:
		shr	si,1
		rcr	bx,1
		rcr	di,1
		rcr	ax,1
		loop	..@j6527
		mov	cx,ax
		mov	ax,di
		mov	si,cx
		mov	bx,ax
		mov	si,cx
		mov	bx,ax
		mov	ax,0
		mov	cx,0
		add	dx,si
		adc	word [bp-40],bx
		adc	word [bp-42],ax
		adc	word [bp-44],cx
		mov	word [bp-30],dx
		mov	ax,word [bp-40]
		mov	word [bp-26],ax
		mov	dx,word [bp-42]
		mov	cx,word [bp-44]
		mov	si,word [bp-16]
		mov	di,word [bp-14]
		mov	ax,word [bp-12]
		mov	bx,word [bp-10]
		add	si,word [bp-30]
		adc	di,word [bp-26]
		adc	ax,dx
		adc	bx,cx
		mov	word [bp-16],si
		mov	word [bp-14],di
		mov	word [bp-12],ax
		mov	word [bp-10],bx
		mov	di,word [bp-16]
		mov	si,word [bp-14]
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		mov	cx,32
..@j6532:
		shr	ax,1
		rcr	dx,1
		rcr	si,1
		rcr	di,1
		loop	..@j6532
		mov	bx,word [bp+8]
		mov	word [bx],di
		mov	word [bx+2],si
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	dx,word [bp-14]
		mov	si,word [bp-12]
		mov	ax,word [bp-10]
		mov	word [bp-22],ax
		mov	cx,32
..@j6537:
		shl	word [bp-20],1
		rcl	dx,1
		rcl	si,1
		rcl	word [bp-22],1
		loop	..@j6537
		mov	ax,word [bp-8]
		mov	cx,word [bp-6]
		mov	bx,0
		mov	di,0
		add	word [bp-20],ax
		adc	dx,cx
		adc	si,bx
		adc	word [bp-22],di
		mov	bx,word [bp+6]
		mov	ax,word [bp-20]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	word [bx+4],si
		mov	ax,word [bp-22]
		mov	word [bx+6],ax
		mov	sp,bp
		pop	bp
		ret	8
