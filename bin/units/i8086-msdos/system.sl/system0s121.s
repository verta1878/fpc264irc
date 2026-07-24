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
	GLOBAL SYSTEM_$$_SWAPENDIAN$INT64$$INT64
SYSTEM_$$_SWAPENDIAN$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	dx,word [bp+4]
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		mov	di,word [bp+10]
		mov	cx,8
..@j1943:
		shl	dx,1
		rcl	bx,1
		rcl	si,1
		rcl	di,1
		loop	..@j1943
		and	dx,-256
		and	bx,-256
		and	si,-256
		and	di,-256
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	ax,word [bp+6]
		mov	cx,word [bp+8]
		mov	word [bp-10],cx
		mov	cx,word [bp+10]
		mov	word [bp-12],cx
		mov	cx,8
..@j1946:
		shr	word [bp-12],1
		rcr	word [bp-10],1
		rcr	ax,1
		rcr	word [bp-16],1
		loop	..@j1946
		and	word [bp-16],255
		and	ax,255
		and	word [bp-10],255
		and	word [bp-12],255
		or	dx,word [bp-16]
		or	bx,ax
		or	si,word [bp-10]
		or	di,word [bp-12]
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],si
		mov	word [bp-2],di
		mov	dx,word [bp-8]
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		mov	di,word [bp-2]
		mov	cx,16
..@j1951:
		shl	dx,1
		rcl	bx,1
		rcl	si,1
		rcl	di,1
		loop	..@j1951
		mov	dx,0
		mov	si,0
		mov	ax,word [bp-8]
		mov	word [bp-26],ax
		mov	ax,word [bp-6]
		mov	word [bp-14],ax
		mov	ax,word [bp-4]
		mov	word [bp-18],ax
		mov	ax,word [bp-2]
		mov	cx,16
..@j1954:
		shr	ax,1
		rcr	word [bp-18],1
		rcr	word [bp-14],1
		rcr	word [bp-26],1
		loop	..@j1954
		mov	word [bp-14],0
		mov	ax,0
		or	dx,word [bp-26]
		or	bx,word [bp-14]
		or	si,word [bp-18]
		or	di,ax
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],si
		mov	word [bp-2],di
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		mov	cx,32
..@j1959:
		shl	ax,1
		rcl	dx,1
		rcl	bx,1
		rcl	si,1
		loop	..@j1959
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	word [bp-20],cx
		mov	cx,word [bp-4]
		mov	word [bp-22],cx
		mov	cx,word [bp-2]
		mov	word [bp-24],cx
		mov	cx,32
..@j1962:
		shr	word [bp-24],1
		rcr	word [bp-22],1
		rcr	word [bp-20],1
		rcr	di,1
		loop	..@j1962
		or	ax,di
		or	dx,word [bp-20]
		or	bx,word [bp-22]
		or	si,word [bp-24]
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
