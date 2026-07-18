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
	GLOBAL fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	dx,word [bp+4]
		sub	dx,1
		jbe	..@j11394
		jmp	..@j11393
..@j11394:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j11392
..@j11393:
..@j11392:
		mov	word [bp+4],ax
		lea	ax,[bp+6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
