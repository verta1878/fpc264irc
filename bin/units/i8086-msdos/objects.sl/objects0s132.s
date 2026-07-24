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
	GLOBAL OBJECTS_$$_NEWSTR$SHORTSTRING$$PSHORTSTRING
OBJECTS_$$_NEWSTR$SHORTSTRING$$PSHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j3163
		jmp	..@j3164
..@j3163:
		mov	word [bp-4],0
		jmp	..@j3167
..@j3164:
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-4],0
		jne	..@j3172
		jmp	..@j3173
..@j3172:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j3173:
..@j3167:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
