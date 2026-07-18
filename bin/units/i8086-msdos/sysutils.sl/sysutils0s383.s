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
	GLOBAL SYSUTILS_$$_STRDISPOSE$PCHAR
SYSUTILS_$$_STRDISPOSE$PCHAR:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j12876
		jmp	..@j12877
..@j12876:
		sub	word [bp+4],4
		push	word [bp+4]
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j12877:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
