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
	GLOBAL fpc_getbuf_text
fpc_getbuf_text:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+12]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23335
		jmp	..@j23336
..@j23335:
		jmp	..@j23331
..@j23336:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23339
		jmp	..@j23340
..@j23339:
		jmp	..@j23331
..@j23340:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
..@j23331:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
