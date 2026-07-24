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
	GLOBAL TYPES$_$TRECTF_$__$$_SETWIDTH$SINGLE
TYPES$_$TRECTF_$__$$_SETWIDTH$SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		wait fld	dword [bp+4]
		wait fadd	dword [bx]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
