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
	GLOBAL CRT_$$_GETSCREENHEIGHT$$WORD
CRT_$$_GETSCREENHEIGHT$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+132]
		mov	ah,0
		inc	ax
		mov	word [bp-2],ax
		mov	ax,64
		mov	es,ax
		cmp	byte [es:+132],0
		je	..@j21
		jmp	..@j22
..@j21:
		mov	word [bp-2],25
..@j22:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
