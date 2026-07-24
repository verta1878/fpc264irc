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
	GLOBAL SYSTEM_$$_BLOCKREAD$file$formal$WORD$WORD
SYSTEM_$$_BLOCKREAD$file$formal$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	cx,word [bp+6]
		mov	ax,0
		mov	bx,0
		mov	dx,0
		push	dx
		push	bx
		push	ax
		push	cx
		lea	ax,[bp-8]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$INT64$INT64
