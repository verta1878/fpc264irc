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
	GLOBAL FGL$_$TFPSMAP_$__$$_SETSORTED$BOOLEAN
FGL$_$TFPSMAP_$__$$_SETSORTED$BOOLEAN:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		cmp	al,byte [bp+4]
		je	..@j1236
		jmp	..@j1237
..@j1236:
		jmp	..@j1234
..@j1237:
		mov	bx,word [bp+6]
		mov	al,byte [bp+4]
		mov	byte [bx+16],al
		cmp	byte [bp+4],0
		jne	..@j1240
		jmp	..@j1241
..@j1240:
		push	word [bp+6]
		call	FGL$_$TFPSMAP_$__$$_SORT
..@j1241:
..@j1234:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSMAP_$__$$_SORT
