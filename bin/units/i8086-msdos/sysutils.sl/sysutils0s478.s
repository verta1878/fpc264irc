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
	GLOBAL SYSUTILS_$$_FILESEEK$WORD$INT64$LONGINT$$INT64
SYSUTILS_$$_FILESEEK$WORD$INT64$LONGINT$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+16]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_FILESEEK$WORD$LONGINT$LONGINT$$LONGINT
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	SYSUTILS_$$_FILESEEK$WORD$LONGINT$LONGINT$$LONGINT
