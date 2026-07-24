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
	GLOBAL SYSTEM_$$_DO_CLOSE$WORD
SYSTEM_$$_DO_CLOSE$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	word [bp+4],4
		jbe	..@j20336
		jmp	..@j20337
..@j20336:
		jmp	..@j20334
..@j20337:
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		cmp	word [bp+4],50
		jb	..@j20340
		jmp	..@j20341
..@j20340:
		mov	bx,word [bp+4]
		mov	byte [U_$SYSTEM_$$_OPENFILES+bx],0
..@j20341:
		mov	word [bp-20],15872
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j20348
		jmp	..@j20349
..@j20348:
		push	word [bp-20]
		call	SYSTEM_$$_GETINOUTRES$WORD
..@j20349:
..@j20334:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_OPENFILES
