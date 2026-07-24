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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_SETCASESENSITIVE$BOOLEAN
CLASSES$_$TSTRINGLIST_$__$$_SETCASESENSITIVE$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+6]
		mov	al,byte [bx+36]
		cmp	al,byte [bp+4]
		je	..@j9429
		jmp	..@j9430
..@j9429:
		jmp	..@j9427
..@j9430:
		mov	bx,word [bp+6]
		mov	al,byte [bp+4]
		mov	byte [bx+36],al
		mov	bx,word [bp+6]
		cmp	word [bx+39],2
		je	..@j9433
		jmp	..@j9434
..@j9433:
		mov	bx,word [bp+6]
		mov	byte [bx+37],1
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9437
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+134]
		call	ax
..@j9437:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		mov	byte [bx+37],0
		pop	ax
		test	ax,ax
		je	..@j9438
		call	FPC_RERAISE
..@j9438:
..@j9434:
..@j9427:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
