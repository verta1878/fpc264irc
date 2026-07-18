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
	GLOBAL SYSUTILS_$$_GENERICANSISTRUPPER$PCHAR$$PCHAR
SYSUTILS_$$_GENERICANSISTRUPPER$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		cmp	word [bp+4],0
		jne	..@j3163
		jmp	..@j3164
..@j3163:
		jmp	..@j3166
	ALIGN 2
..@j3165:
		mov	bx,word [bp+4]
		mov	bl,byte [bx]
		mov	bh,0
		mov	si,word [bp+4]
		mov	al,byte [U_$SYSUTILS_$$_UPPERCASETABLE+bx]
		mov	byte [si],al
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp+4],ax
..@j3166:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		jne	..@j3165
		jmp	..@j3167
..@j3167:
..@j3164:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSUTILS_$$_UPPERCASETABLE
