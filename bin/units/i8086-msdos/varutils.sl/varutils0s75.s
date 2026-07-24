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
	GLOBAL VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		je	..@j4633
		jmp	..@j4634
..@j4633:
		mov	word [bp-4],87
		mov	word [bp-2],-32761
		jmp	..@j4637
..@j4634:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4637:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
