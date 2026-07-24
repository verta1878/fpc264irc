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
	GLOBAL DATEUTILS_$$_INCWEEK$TDATETIME$SMALLINT$$TDATETIME
DATEUTILS_$$_INCWEEK$TDATETIME$SMALLINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,7
		mul	word [bp+4]
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fadd	qword [bp+6]
		wait fstp	qword [bp-8]
		DB	09bh
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-8]
		push	ax
		call	DATEUTILS_$$_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	DATEUTILS_$$_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
