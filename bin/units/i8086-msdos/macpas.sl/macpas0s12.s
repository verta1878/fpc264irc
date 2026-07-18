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
	GLOBAL MACPAS_$$_BAND$QWORD$QWORD$$QWORD
MACPAS_$$_BAND$QWORD$QWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		mov	cx,word [bp+18]
		and	bx,word [bp+4]
		and	ax,word [bp+6]
		and	dx,word [bp+8]
		and	cx,word [bp+10]
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
