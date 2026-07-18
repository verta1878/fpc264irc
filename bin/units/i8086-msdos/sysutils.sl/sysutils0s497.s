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
	GLOBAL SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],44
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	bx,word [bp+4]
		mov	al,byte [bp-15]
		mov	ah,0
		mov	word [bx+8],ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-16]
		mov	ah,0
		mov	word [bx+10],ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-13]
		mov	ah,0
		mov	word [bx+12],ax
		mov	dl,byte [bp-14]
		mov	dh,0
		mov	ax,10
		mul	dx
		mov	bx,word [bp+4]
		mov	word [bx+14],ax
		mov	byte [bp-19],42
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	bx,word [bp+4]
		mov	ax,word [bp-16]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-13]
		mov	ah,0
		mov	word [bx+2],ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-14]
		mov	ah,0
		mov	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
