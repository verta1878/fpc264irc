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
	GLOBAL OBJECTS_$$_SETSTR$PSHORTSTRING$SHORTSTRING
OBJECTS_$$_SETSTR$PSHORTSTRING$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx],0
		jne	..@j3192
		jmp	..@j3193
..@j3192:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j3193:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
