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
	GLOBAL MATH_$$_MAX$SINGLE$SINGLE$$SINGLE
MATH_$$_MAX$SINGLE$SINGLE$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,6
		wait fld	dword [bp+4]
		wait fld	dword [bp+8]
		wait fcompp
		fstsw	[bp-6]
		mov	ah,byte [bp-5]
		sahf
		jp	..@j1851
		ja	..@j1849
..@j1851:
		jmp	..@j1850
..@j1849:
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
		jmp	..@j1854
..@j1850:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j1854:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	8
