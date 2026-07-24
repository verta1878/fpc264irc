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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READBINARY$TMEMORYSTREAM
CLASSES$_$TBINARYOBJECTREADER_$__$$_READBINARY$TMEMORYSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	word [bp+4]
		mov	dx,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
