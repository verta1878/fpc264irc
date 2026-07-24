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
	GLOBAL fpc_trunc_real
fpc_trunc_real:
		push	bp
		mov	bp,sp
		sub	sp,8
		sub	sp,10
		wait fld	tword [bp+4]
		fnstcw	[bp-10]
		mov	cl,byte [bp-9]
		or	byte [bp-9],15
		wait fldcw	[bp-10]
		mov	byte [bp-9],cl
		wait fistp	qword [bp-8]
		wait fldcw	[bp-10]
		DB	09bh
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
