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
	GLOBAL SYSTEM_$$_STRINGCODEPAGE$UNICODESTRING$$WORD
SYSTEM_$$_STRINGCODEPAGE$UNICODESTRING$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j13694
		jmp	..@j13695
..@j13694:
		mov	bx,word [bp+4]
		mov	ax,word [bx-8]
		mov	word [bp-2],ax
		jmp	..@j13698
..@j13695:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTUNICODECODEPAGE]
		mov	word [bp-2],ax
..@j13698:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_DEFAULTUNICODECODEPAGE
