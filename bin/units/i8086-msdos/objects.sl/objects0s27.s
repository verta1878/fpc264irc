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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_STRREAD$$PCHAR
OBJECTS$_$TSTREAM_$__$$_STRREAD$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		cmp	word [bp-4],0
		je	..@j330
		jmp	..@j331
..@j330:
		mov	word [bp-2],0
		jmp	..@j334
..@j331:
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-6],0
		jne	..@j339
		jmp	..@j340
..@j339:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		mov	dx,word [bp-4]
		mov	ax,0
		push	ax
		push	dx
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		mov	byte [bx+si],0
..@j340:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j334:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
