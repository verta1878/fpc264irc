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
	GLOBAL fpc_setstring_shortstr
fpc_setstring_shortstr:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		cmp	ax,word [bp+8]
		jg	..@j8225
		jmp	..@j8226
..@j8225:
		mov	ax,word [bp+8]
		mov	word [bp+4],ax
..@j8226:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+4]
		call	fpc_shortstr_setlength
		cmp	word [bp+6],0
		jne	..@j8235
		jmp	..@j8236
..@j8235:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+10]
		lea	ax,[bx+1]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j8236:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_shortstr_setlength
