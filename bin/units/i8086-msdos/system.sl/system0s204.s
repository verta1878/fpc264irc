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
	GLOBAL fpc_int_real
fpc_int_real:
		push	bp
		mov	bp,sp
		sub	sp,10
		sub	sp,2
		fnstcw	[bp-2]
		DB	09bh
		mov	cl,byte [bp-1]
		or	byte [bp-1],15
		wait fldcw	[bp-2]
		DB	09bh
		wait fld	tword [bp+4]
		wait frndint
		DB	09bh
		mov	byte [bp-1],cl
		wait fldcw	[bp-2]
		mov	sp,bp
		pop	bp
		ret	10
