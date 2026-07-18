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
	GLOBAL SYSTEM_$$_TRANSLATEPLACEHOLDERCP$WORD$$WORD
SYSTEM_$$_TRANSLATEPLACEHOLDERCP$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j8539
		jmp	..@j8538
..@j8539:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	word [bp-2],ax
		jmp	..@j8537
..@j8538:
..@j8537:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
