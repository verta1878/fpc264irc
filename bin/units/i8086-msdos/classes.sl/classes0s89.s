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
	GLOBAL CLASSES$_$TMEMORYSTREAM_$__$$_SETSIZE$LONGINT
CLASSES$_$TMEMORYSTREAM_$__$$_SETSIZE$LONGINT:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+4]
		call	CLASSES$_$TMEMORYSTREAM_$__$$_SETCAPACITY$SMALLINT
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+6]
		cmp	ax,word [si+4]
		jg	..@j1919
		jmp	..@j1920
..@j1919:
		mov	si,word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	word [si+6],ax
..@j1920:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TMEMORYSTREAM_$__$$_SETCAPACITY$SMALLINT
