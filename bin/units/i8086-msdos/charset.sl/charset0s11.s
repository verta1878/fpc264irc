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
	GLOBAL CHARSET_$$_FREEMAPPING$PUNICODEMAP
CHARSET_$$_FREEMAPPING$PUNICODEMAP:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		je	..@j562
		jmp	..@j563
..@j562:
		jmp	..@j560
..@j563:
		mov	bx,word [bp+4]
		cmp	word [bx+23],0
		jne	..@j564
		jmp	..@j565
..@j564:
		mov	bx,word [bp+4]
		push	word [bx+23]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j565:
		mov	bx,word [bp+4]
		cmp	word [bx+29],0
		jne	..@j568
		jmp	..@j569
..@j568:
		mov	bx,word [bp+4]
		push	word [bx+29]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j569:
		push	word [bp+4]
		call	fpc_freemem
..@j560:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_freemem
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
