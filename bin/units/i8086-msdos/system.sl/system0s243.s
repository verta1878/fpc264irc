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
	GLOBAL SYSTEM$_$TSINGLEREC_$__$$_MANTISSA$$QWORD
SYSTEM$_$TSINGLEREC_$__$$_MANTISSA$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		and	dx,127
		mov	cx,ax
		mov	bx,dx
		mov	cx,ax
		mov	bx,dx
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
