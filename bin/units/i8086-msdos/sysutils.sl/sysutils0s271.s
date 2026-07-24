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
	GLOBAL SYSUTILS_$$_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP
SYSUTILS_$$_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP:
		push	bp
		mov	bp,sp
		sub	sp,12
		fstcw	[bp-4]
		fstcw	[bp-2]
		DB	09bh
		or	word [bp-4],3840
		wait fild	qword [bp+4]
		wait fild	qword [_$SYSUTILS$_Ld650]
		wait fdivp	st1,st0
		wait fldcw	[bp-4]
		wait fistp	qword [bp-12]
		wait fldcw	[bp-2]
		DB	09bh
		mov	bx,word [bp+12]
		mov	ax,word [bp-12]
		mov	word [bx+4],ax
		mov	ax,word [bp-10]
		mov	word [bx+6],ax
		mov	bx,word [bp+12]
		wait fild	dword [bx+4]
		wait fild	qword [_$SYSUTILS$_Ld650]
		wait fmulp	st1,st0
		wait fild	qword [bp+4]
		wait fsubrp	st1,st0
		wait fistp	qword [bp+4]
		DB	09bh
		wait fild	qword [bp+4]
		wait fistp	qword [bp-8]
		DB	09bh
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$SYSUTILS$_Ld650
