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
	GLOBAL SYSTEM_$$_BLOCKREAD$file$formal$LONGWORD$LONGWORD
SYSTEM_$$_BLOCKREAD$file$formal$LONGWORD$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		mov	bx,0
		mov	cx,0
		push	cx
		push	bx
		push	ax
		push	dx
		lea	ax,[bp-8]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
