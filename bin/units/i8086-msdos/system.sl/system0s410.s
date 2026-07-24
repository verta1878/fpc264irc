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
	GLOBAL SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j10644
		jmp	..@j10645
..@j10644:
		mov	bx,word [bp+4]
		mov	ax,word [bx-8]
		mov	word [bp-2],ax
		jmp	..@j10648
..@j10645:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	word [bp-2],ax
..@j10648:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
