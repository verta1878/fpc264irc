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
	GLOBAL CLASSES_$$_POINT$SMALLINT$SMALLINT$$TPOINT
CLASSES_$$_POINT$SMALLINT$SMALLINT$$TPOINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		cwd
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		cwd
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	sp,bp
		pop	bp
		ret	6
