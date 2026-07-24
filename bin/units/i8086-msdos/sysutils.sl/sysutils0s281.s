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
	GLOBAL SYSUTILS_$$_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME
SYSUTILS_$$_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		push	word [bx+4]
		call	SYSUTILS_$$_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	bx,word [bp+4]
		push	word [bx+10]
		mov	bx,word [bp+4]
		push	word [bx+12]
		mov	bx,word [bp+4]
		push	word [bx+14]
		call	SYSUTILS_$$_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
