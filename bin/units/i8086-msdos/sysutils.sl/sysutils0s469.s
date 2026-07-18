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
	GLOBAL SYSUTILS_$$_BEEP
SYSUTILS_$$_BEEP:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSUTILS_$$_ONBEEP],0
		jne	..@j15122
		jmp	..@j15123
..@j15122:
		mov	ax,word [TC_$SYSUTILS_$$_ONBEEP]
		call	ax
..@j15123:
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSUTILS_$$_ONBEEP
