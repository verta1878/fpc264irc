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
	GLOBAL DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN
DOORKIT86_$$_DOORKEYPRESSED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
		test	al,al
		jne	..@j213
		jmp	..@j214
..@j213:
		mov	byte [bp-1],1
		jmp	..@j211
..@j214:
		cmp	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		jne	..@j219
		jmp	..@j218
..@j219:
		cmp	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
		je	..@j217
		jmp	..@j218
..@j217:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		call	DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD
		and	ax,256
		test	ax,ax
		mov	al,0
		je	..@j224
		inc	ax
..@j224:
		mov	byte [bp-1],al
		jmp	..@j211
..@j218:
		mov	byte [bp-1],0
..@j211:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD
EXTERN	U_$DOORKIT86_$$_DOORCOMPORT
EXTERN	U_$DOORKIT86_$$_DOORLOCALMODE
EXTERN	U_$DOORKIT86_$$_DOORFOSSIL
EXTERN	DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
