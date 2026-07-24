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
	GLOBAL DATEUTILS_$$_MILLISECONDOFTHEDAY$TDATETIME$$LONGWORD
DATEUTILS_$$_MILLISECONDOFTHEDAY$TDATETIME$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,12
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		mov	ax,60
		mul	word [bp-6]
		mov	dx,word [bp-8]
		add	dx,ax
		mov	ax,60
		mul	dx
		mov	dx,word [bp-10]
		add	dx,ax
		mov	ax,1000
		mul	dx
		mov	dx,word [bp-12]
		add	dx,ax
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
