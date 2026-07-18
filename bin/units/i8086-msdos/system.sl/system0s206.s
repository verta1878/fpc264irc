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
	GLOBAL fpc_round_real
fpc_round_real:
		push	bp
		mov	bp,sp
		sub	sp,16
		wait fld	tword [bp+4]
		wait fistp	qword [bp-16]
		DB	09bh
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
