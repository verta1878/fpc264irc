BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_ADD$ANSISTRING$$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_ADD$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	word [bx+39],2
		jne	..@j9314
		jmp	..@j9315
..@j9314:
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		mov	word [bp-2],ax
		jmp	..@j9318
..@j9315:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+132]
		call	ax
		test	al,al
		jne	..@j9319
		jmp	..@j9320
..@j9319:
		mov	bx,word [bp+6]
		mov	ax,word [bx+34]
		mov	dx,0
		test	dx,dx
		jne	..@j9331
		test	ax,ax
		je	..@j9329
..@j9331:
		test	dx,dx
		jne	..@j9332
		cmp	ax,2
		je	..@j9330
..@j9332:
		jmp	..@j9328
..@j9329:
		jmp	..@j9312
		jmp	..@j9327
..@j9330:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SDUPLICATESTRING+2]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
		jmp	..@j9327
..@j9328:
..@j9327:
..@j9320:
..@j9318:
		push	word [bp+6]
		push	word [bp-2]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+126]
		call	ax
..@j9312:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SDUPLICATESTRING
