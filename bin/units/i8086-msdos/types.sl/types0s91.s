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
	GLOBAL TYPES$_$TPOINTF_$__$$_CEILING$$TPOINT
TYPES$_$TPOINTF_$__$$_CEILING$$TPOINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		wait fld	dword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	MATH_$$_CEIL$EXTENDED$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp+4]
		mov	word [bx],cx
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		wait fld	dword [bx+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	MATH_$$_CEIL$EXTENDED$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp+4]
		mov	word [bx+4],cx
		mov	word [bx+6],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_CEIL$EXTENDED$$SMALLINT
