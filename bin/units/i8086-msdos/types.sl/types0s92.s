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
	GLOBAL TYPES$_$TPOINTF_$__$$_TRUNCATE$$TPOINT
TYPES$_$TPOINTF_$__$$_TRUNCATE$$TPOINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		mov	bx,word [bp+6]
		wait fld	dword [bx]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		mov	word [bx],ax
		mov	ax,word [bp-10]
		mov	word [bx+2],ax
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		mov	bx,word [bp+6]
		wait fld	dword [bx+4]
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		mov	word [bx+4],ax
		mov	ax,word [bp-10]
		mov	word [bx+6],ax
		mov	sp,bp
		pop	bp
		ret	4
