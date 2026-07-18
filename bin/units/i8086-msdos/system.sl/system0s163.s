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
	GLOBAL SYSTEM_$$_RORQWORD$QWORD$$QWORD
SYSTEM_$$_RORQWORD$QWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	si,word [bp+10]
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		mov	cx,word [bp+4]
		mov	word [bp-14],cx
		mov	di,word [bp+6]
		mov	cx,word [bp+8]
		mov	word [bp-10],cx
		mov	cx,word [bp+10]
		mov	word [bp-12],cx
		mov	cx,63
..@j2179:
		shl	word [bp-14],1
		rcl	di,1
		rcl	word [bp-10],1
		rcl	word [bp-12],1
		loop	..@j2179
		or	ax,word [bp-14]
		or	dx,di
		or	bx,word [bp-10]
		or	si,word [bp-12]
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
