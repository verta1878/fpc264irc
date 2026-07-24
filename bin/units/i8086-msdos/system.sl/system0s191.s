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
	GLOBAL SYSTEM_$$_SWAP$QWORD$$QWORD
SYSTEM_$$_SWAP$QWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	si,word [bp+10]
		mov	cx,32
..@j2445:
		shl	ax,1
		rcl	dx,1
		rcl	bx,1
		rcl	si,1
		loop	..@j2445
		mov	cx,word [bp+4]
		mov	word [bp-14],cx
		mov	di,word [bp+6]
		mov	cx,word [bp+8]
		mov	word [bp-10],cx
		mov	cx,word [bp+10]
		mov	word [bp-12],cx
		mov	cx,32
..@j2448:
		shr	word [bp-12],1
		rcr	word [bp-10],1
		rcr	di,1
		rcr	word [bp-14],1
		loop	..@j2448
		add	ax,word [bp-14]
		adc	dx,di
		adc	bx,word [bp-10]
		adc	si,word [bp-12]
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
