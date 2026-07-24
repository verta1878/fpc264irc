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
	GLOBAL SYSTEM_$$_INIT_UNIT_THREADVARS$PLTVINITENTRY
SYSTEM_$$_INIT_UNIT_THREADVARS$PLTVINITENTRY:
		push	bp
		mov	bp,sp
		jmp	..@j20151
	ALIGN 2
..@j20150:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+4]
		push	word [bx+2]
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+36]
		call	ax
		add	word [bp+4],6
..@j20151:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j20150
		jmp	..@j20152
..@j20152:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_CURRENTTM
