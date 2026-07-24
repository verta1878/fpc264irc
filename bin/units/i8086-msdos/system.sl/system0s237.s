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
	GLOBAL SYSTEM$_$TDOUBLEREC_$__$$_SETEXP$QWORD
SYSTEM$_$TDOUBLEREC_$__$$_SETEXP$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		mov	dx,word [bx+6]
		and	dx,-32753
		mov	ax,word [bp+4]
		mov	di,word [bp+6]
		mov	si,word [bp+8]
		mov	cx,word [bp+10]
		and	ax,2047
		mov	di,0
		mov	si,0
		mov	cx,0
		mov	bx,ax
		mov	ax,di
		mov	di,cx
		mov	cx,52
..@j3479:
		shl	bx,1
		rcl	ax,1
		rcl	si,1
		rcl	di,1
		loop	..@j3479
		or	word [bp-6],bx
		or	word [bp-4],ax
		or	word [bp-2],si
		or	dx,di
		mov	bx,word [bp+12]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	sp,bp
		pop	bp
		ret	10
