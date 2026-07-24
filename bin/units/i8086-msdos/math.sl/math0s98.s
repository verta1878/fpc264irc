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
	GLOBAL MATH_$$_MOMENTSKEWKURTOSIS$crc520B9440
MATH_$$_MOMENTSKEWKURTOSIS$crc520B9440:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+18]
		push	ax
		mov	ax,word [bp+16]
		inc	ax
		push	ax
		mov	ax,word [bp+14]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	MATH_$$_MOMENTSKEWKURTOSIS$crcD4640B92
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	MATH_$$_MOMENTSKEWKURTOSIS$crcD4640B92
