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
	GLOBAL TYPES$_$TPOINTF_$__$$_ROUND$$TPOINT
TYPES$_$TPOINTF_$__$$_ROUND$$TPOINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		wait fld	dword [bx]
		wait fistp	qword [bp-8]
		DB	09bh
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		wait fld	dword [bx+4]
		wait fistp	qword [bp-8]
		DB	09bh
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx+4],ax
		mov	ax,word [bp-6]
		mov	word [bx+6],ax
		mov	sp,bp
		pop	bp
		ret	4
