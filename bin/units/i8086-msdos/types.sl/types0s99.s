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
	GLOBAL TYPES$_$TPOINTF_$__$$_star$SINGLE$TPOINTF$$TPOINTF
TYPES$_$TPOINTF_$__$$_star$SINGLE$TPOINTF$$TPOINTF:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		call	TYPES$_$TPOINTF_$__$$_SCALE$SINGLE$$TPOINTF
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TYPES$_$TPOINTF_$__$$_SCALE$SINGLE$$TPOINTF
