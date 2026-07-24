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
	GLOBAL CRT_$$_SOUND$WORD
CRT_$$_SOUND$WORD:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		je	..@j322
		jmp	..@j323
..@j322:
		call	CRT_$$_NOSOUND
		jmp	..@j319
..@j323:
		mov	cx,word [bp+4]
		mov	ax,13398
		mov	dx,18
		div	cx
		mov	cx,ax
		in	al,97
		test	al,3
		jnz	..@j321
		or	al,3
		out	97,al
		mov	al,182
		out	67,al
..@j321:
		mov	al,cl
		out	66,al
		mov	al,ch
		out	66,al
..@j319:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_NOSOUND
