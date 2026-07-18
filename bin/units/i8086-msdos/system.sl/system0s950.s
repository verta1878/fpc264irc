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
	GLOBAL SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],1
		cmp	word [U_$SYSTEM_$$_CURRENTTM+2],0
		jne	..@j19892
		jmp	..@j19893
..@j19892:
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+2]
		call	ax
		mov	byte [bp-1],al
..@j19893:
		cmp	byte [bp-1],0
		jne	..@j19896
		jmp	..@j19897
..@j19896:
		mov	si,word [bp+4]
		mov	di,word U_$SYSTEM_$$_CURRENTTM
		push	ds
		pop	es
		cld
		mov	cx,37
		rep
		movsw
		cmp	word [U_$SYSTEM_$$_CURRENTTM],0
		jne	..@j19900
		jmp	..@j19901
..@j19900:
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM]
		call	ax
		mov	byte [bp-1],al
..@j19901:
..@j19897:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_CURRENTTM
