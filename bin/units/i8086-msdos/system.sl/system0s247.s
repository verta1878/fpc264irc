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
	GLOBAL SYSTEM$_$TSINGLEREC_$__$$_SETEXP$QWORD
SYSTEM$_$TSINGLEREC_$__$$_SETEXP$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+12]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		and	ax,-32641
		mov	word [bp-4],dx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	bx,0
		mov	ax,word [bp+4]
		mov	di,word [bp+6]
		mov	cx,word [bp+8]
		mov	dx,word [bp+10]
		and	ax,255
		mov	di,0
		mov	cx,0
		mov	dx,0
		mov	si,ax
		mov	ax,di
		mov	di,cx
		mov	cx,23
..@j3583:
		shl	si,1
		rcl	ax,1
		rcl	di,1
		rcl	dx,1
		loop	..@j3583
		or	word [bp-4],si
		or	word [bp-6],ax
		or	word [bp-2],di
		or	bx,dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-6]
		mov	bx,word [bp+12]
		mov	word [bx],dx
		mov	word [bx+2],ax
		mov	sp,bp
		pop	bp
		ret	10
