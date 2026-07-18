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
	GLOBAL DATEUTILS_$$_DAYSINMONTH$TDATETIME$$WORD
DATEUTILS_$$_DAYSINMONTH$TDATETIME$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		push	word [bp-4]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	ax,24
		mul	bx
		mov	bx,ax
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	ax,word [TC_$SYSUTILS_$$_MONTHDAYS+bx+si-2]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TC_$SYSUTILS_$$_MONTHDAYS
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
