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
	GLOBAL MATRIX_$$_assign$TVECTOR4_SINGLE$$TVECTOR2_SINGLE
MATRIX_$$_assign$TVECTOR4_SINGLE$$TVECTOR2_SINGLE:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [si],ax
		mov	ax,word [bx+2]
		mov	word [si+2],ax
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si+4]
		mov	word [bx+4],ax
		mov	ax,word [si+6]
		mov	word [bx+6],ax
		mov	sp,bp
		pop	bp
		ret	4
