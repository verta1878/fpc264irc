BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READUNICODESTRING$$UNICODESTRING
CLASSES$_$TBINARYOBJECTREADER_$__$$_READUNICODESTRING$$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	fpc_unicodestr_setlength
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		ja	..@j18091
		jb	..@j18092
		cmp	ax,0
		ja	..@j18091
		jmp	..@j18092
..@j18091:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
..@j18092:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_unicodestr_setlength
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
