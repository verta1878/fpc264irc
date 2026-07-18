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
	GLOBAL SYSTEM$_$TEXTENDED80REC_$__$$_MANTISSA$$QWORD
SYSTEM$_$TEXTENDED80REC_$__$$_MANTISSA$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	bx,word [bx+6]
		and	bx,32767
		mov	word [bp-8],ax
		mov	word [bp-6],cx
		mov	word [bp-4],dx
		mov	word [bp-2],bx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
