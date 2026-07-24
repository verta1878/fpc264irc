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
	GLOBAL SYSUTILS_$$_DISPOSESTR$PSHORTSTRING
SYSUTILS_$$_DISPOSESTR$PSHORTSTRING:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j2743
		jmp	..@j2744
..@j2743:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j2744:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
