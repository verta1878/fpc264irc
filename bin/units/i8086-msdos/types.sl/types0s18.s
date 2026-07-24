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
	GLOBAL TYPES$_$TPOINT_$__$$_ZERO$$TPOINT
TYPES$_$TPOINT_$__$$_ZERO$$TPOINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	sp,bp
		pop	bp
		ret	2
