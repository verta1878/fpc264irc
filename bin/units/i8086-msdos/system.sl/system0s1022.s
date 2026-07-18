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
	GLOBAL SYSTEM_$$_ASSIGN$TEXT$UNICODESTRING
SYSTEM_$$_ASSIGN$TEXT$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,512
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_INITTEXT$TEXT
		lea	ax,[bp-512]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_to_widechararray
		mov	bx,word [bp+6]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp-512]
		cld
		mov	cx,256
		rep
		movsw
		mov	bx,word [bp+6]
		mov	word [bx+566],0
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_unicodestr_to_widechararray
EXTERN	SYSTEM_$$_INITTEXT$TEXT
