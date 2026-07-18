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
	GLOBAL OBJECTS_$$_DISPOSESTR$PSHORTSTRING
OBJECTS_$$_DISPOSESTR$PSHORTSTRING:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j3184
		jmp	..@j3185
..@j3184:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j3185:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
