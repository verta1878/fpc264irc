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
	GLOBAL DOORKIT86_$$_DOORREADKEY$$CHAR
DOORKIT86_$$_DOORREADKEY$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		jmp	..@j230
	ALIGN 2
..@j229:
..@j230:
		call	DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN
		test	al,al
		jne	..@j231
		jmp	..@j229
..@j231:
		call	DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
		test	al,al
		jne	..@j232
		jmp	..@j233
..@j232:
		call	DOORKIT86_$$_BIOSREADKEY$$CHAR
		mov	byte [bp-1],al
		jmp	..@j236
..@j233:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		call	DOORKIT86_$$_FOSSILREAD$WORD$$CHAR
		mov	byte [bp-1],al
..@j236:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	DOORKIT86_$$_FOSSILREAD$WORD$$CHAR
EXTERN	U_$DOORKIT86_$$_DOORCOMPORT
EXTERN	DOORKIT86_$$_BIOSREADKEY$$CHAR
EXTERN	DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
EXTERN	DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN
