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
	GLOBAL CRC_$$_assign$QWORD$$U128
CRC_$$_assign$QWORD$$U128:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		mov	di,ax
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+12]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	word [bx+12],0
		mov	word [bx+14],0
		mov	sp,bp
		pop	bp
		ret	10
