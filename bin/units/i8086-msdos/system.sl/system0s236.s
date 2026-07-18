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
	GLOBAL SYSTEM$_$TDOUBLEREC_$__$$_GETEXP$$QWORD
SYSTEM$_$TDOUBLEREC_$__$$_GETEXP$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	si,word [bx+4]
		mov	bx,word [bx+6]
		mov	ax,0
		mov	dx,0
		mov	si,0
		and	bx,32752
		mov	cx,52
..@j3472:
		shr	bx,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j3472
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],si
		mov	word [bp-2],bx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
